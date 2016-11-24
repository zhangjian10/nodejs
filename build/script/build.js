const gulp = require('gulp');
const rev = require('gulp-rev');
const revCollector = require('gulp-rev-collector');
const preprocess = require('gulp-preprocess');
const path = require('path');
const gulpif = require('gulp-if');

const check = require('./check.js');

var options = {};

/**
 * 获取参数
 * @return {[type]} [description]
 */
function getOption() {
    const argv = require('yargs').argv;
    const keys = Object.keys(argv);
    keys.shift();
    keys.pop();

    for (var key in keys) {
        key = keys[key];
        var caseKey = key;
        options[key] = argv[caseKey];

        if (options[key] === "true") {
            options[key] = true;
        }
    }
}

getOption();

var getSrc = check.getSrc;
var config = check.config;
config.ignore = ["css-sprite"];

const noSit = !options.hasOwnProperty("SIT");
const isH5 = options.hasOwnProperty("h5");

delete options.SIT;
delete options.h5;

///图片处理
gulp.task('img', () => {
    const src = getSrc("/**/*.+(jpeg|jpg|png|gif|ico)");
    return gulp.src(src)
        .pipe(rev())
        .pipe(gulp.dest(config.outPut))
        .pipe(rev.manifest('img.json'))
        .pipe(gulp.dest(config.outPut));
});

///js压缩混淆
var uglify = require('gulp-uglify')
gulp.task('js', () => {
    const src = getSrc("/**/*.js");
    return gulp.src(src)
        .pipe(preprocess({ context: options }))
        .pipe(gulpif(noSit, uglify()))
        .pipe(rev())
        .pipe(gulp.dest(config.outPut))
        .pipe(rev.manifest('js.json'))
        .pipe(gulp.dest(config.outPut));
})

const minifyCSS = require('gulp-minify-css');
const makeUrlVer = require('gulp-make-css-url-version');
const base64 = require('gulp-base64');
const autoprefixer = require('gulp-autoprefixer');

// css处理
gulp.task('css', ['img'], () => {

    const src = getSrc("/**/*.css");
    var browsers = isH5 ? ['iOS 7', 'Android > 4.0'] : ['last 3 versions', 'not ie <= 9'];

    return gulp.src(src)
        .pipe(preprocess({ context: options }))
        .pipe(autoprefixer({
            browsers: browsers
                // cascade: false
        }))
        .pipe(gulpif(noSit, minifyCSS()))
        .pipe(gulpif(noSit, base64({
            maxImageSize: 3 * 1024
        })))
        .pipe(makeUrlVer({ useDate: false }))
        .pipe(rev())
        .pipe(gulp.dest(config.outPut))
        .pipe(rev.manifest('css.json'))
        .pipe(gulp.dest(config.outPut));
})

// html压缩
const htmlmin = require('gulp-htmlmin');
gulp.task('html', ['css', 'js'], () => {
    const option = {
        removeComments: true, //清除HTML注释
        collapseWhitespace: true, //压缩HTML
        collapseBooleanAttributes: true, //省略布尔属性的值 <input checked="true"/> ==> <input />
        removeEmptyAttributes: true, //删除所有空格作属性值 <input id="" /> ==> <input />
        removeScriptTypeAttributes: true, //删除<script>的type="text/javascript"
        removeStyleLinkTypeAttributes: true, //删除<style>和<link>的type="text/css"
        minifyJS: true, //压缩页面JS
        minifyCSS: true //压缩页面CSS
    };
    var src = [];
    src.push(path.normalize(config.outPut + "/*.json"));
    src = src.concat(getSrc("/**/*.html"));

    return gulp.src(src)
        .pipe(preprocess({ context: options }))
        .pipe(revCollector())
        .pipe(gulpif(noSit, htmlmin(option)))
        .pipe(gulp.dest(config.outPut));
});

// 删除多余文件
const del = require('del');
gulp.task('del', ['html'], () => {
    return del([
        config.outPut + '/css.json',
        config.outPut + '/js.json',
        config.outPut + '/img.json'
    ], { force: true });
});

//清理
const clean = require('gulp-clean');
gulp.task('clean', () => {
    return gulp.src([config.outPut], { read: false })
        .pipe(clean({ force: true }));
});

// gulp.task('default', ['h5-check', 'clean'], () => {
//     return gulp.start('del');
// });

gulp.task('default', ['clean'], () => {
    return gulp.start('del');
});

// gulp.task('h5-build', ['h5-check','clean'], () => {
//     return gulp.start('del');
// });