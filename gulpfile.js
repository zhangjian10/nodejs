var gulp = require('gulp'),
    fs = require('fs'),
    path = require("path"),
    colors = require('colors');

colors.setTheme({
    silly: 'rainbow',
    input: 'grey',
    verbose: 'cyan',
    prompt: 'red',
    info: 'green',
    data: 'blue',
    help: 'cyan',
    warn: 'yellow',
    debug: 'magenta',
    error: 'red'
});

var option = {
    src: "../src" //源文件目录
}

var argv = require('yargs').argv,
    targets = argv.targets || "m", //app编译环境
    outPut = argv.outPut || "dist"; //app编译环境

if (targets === true) {
    targets = "m";
}

var imageFiles = [];
var cssFiles = [];
var jsFiles = [];
/**
 * 筛选app需要的html，js，css，img等
 */
gulp.task('html', ['clean'], function(cb) {
    var files = [option.src + "/" + "protocol.html"],
        htmlPath = ["protocol.html", "zqzr", "cashback", "activity/invitefriend"];
    for (var i = htmlPath.length - 1; i >= 0; i--) {
        files.push(option.src + "/" + htmlPath[i] + '/*.html');
    }
    var options = {
        removeComments: true, //清除HTML注释
        collapseWhitespace: true, //压缩HTML
        collapseBooleanAttributes: true, //省略布尔属性的值 <input checked="true"/> ==> <input />
        removeEmptyAttributes: true, //删除所有空格作属性值 <input id="" /> ==> <input />
        removeScriptTypeAttributes: true, //删除<script>的type="text/javascript"
        removeStyleLinkTypeAttributes: true, //删除<style>和<link>的type="text/css"
        minifyJS: true, //压缩页面JS
        minifyCSS: true //压缩页面CSS
    };

    var rev2 = require('gulp-rev-mtime');
    var htmlmin = require('gulp-htmlmin');
    return gulp.src(files, {
            base: option.src
        })
        .pipe(rev2({
            fileTypes: ['js', 'css', 'img'],
            call: function(src, fileType) {
                switch (fileType) {
                    case "js":
                        if (jsFiles.indexOf(src) != -1) {
                            return;
                        }
                        jsFiles.push(src);
                        checkJs(src);
                        break;
                    case "css":
                        if (cssFiles.indexOf(src) != -1) {
                            return;
                        }
                        cssFiles.push(src);
                        break;
                    case "img":
                        if (imageFiles.indexOf(src) != -1) {
                            return;
                        }
                        imageFiles.push(src);
                        break;
                }
            }
        }))
        .pipe(htmlmin(options))
        .pipe(gulp.dest(outPut));
});

/**
 * 检查js
 * @param  {[type]} filePath [description]
 * @return {[type]}      [description]
 * @description 查找js里图片，并复制
 */
function checkJs(filePath) {
    fs.readFile(filePath, function(err, data) {
        if (err) {
            return console.error(err);
        }
        const checkSuffix = [".jpg", ".gif", ".jpeg", ".png"];
        var content = data.toString();

        for (var suffix in checkSuffix) {
            var fromindex = 0;
            while (true) {
                var index = content.indexOf(checkSuffix[suffix], fromindex);
                if (index > -1) {
                    fromindex = index + 1;
                    var startIndex = index;
                    while (true) {
                        startIndex--;
                        if (content[startIndex] == "\"" || content[startIndex] == "'") {
                            break;
                        }
                    }
                    var src = content.substring(startIndex + 1, index + 4);
                    src = path.join(option.src, src);

                    console.log((filePath + " 包含图片:" + src).warn);

                    if (imageFiles.indexOf(src) != -1) {
                        return;
                    }
                    imageFiles.push(src);
                    continue;
                }
                break;
            }

        }
    });
}

/**
 * js处理
 * @return {[type]}   [description]
 */
var uglify = require('gulp-uglify'),
    preprocess = require('gulp-preprocess');
gulp.task('js', ['html'], function() {
    gulp.src(jsFiles, {
            base: option.src
        })
        .pipe(preprocess({ context: { TARGETS: targets } })) //编译环境
        .pipe(uglify())
        .pipe(gulp.dest(outPut));
});

/**
 * css处理
 * @return {[type]}   [description]
 */
var base64 = require('gulp-base64');
var minifyCSS = require('gulp-minify-css');
gulp.task('css', ['html'], function() {
    var cwd = process.cwd();
    return gulp.src(cssFiles, {
            base: option.src
        })
        .pipe(minifyCSS())
        .pipe(base64({
            maxImageSize: 5 * 1024,
            call: function(src) {
                src = path.relative(cwd, src);
                if (imageFiles.indexOf(src) != -1) {
                    return;
                }
                imageFiles.push(src);
            }
        }))
        .pipe(gulp.dest(outPut));
});

/**
 * 图片处理
 * @return {[type]}   [description]
 */
// var imagemin = require('gulp-imagemin');
// 
const imagemin = require('gulp-imagemin');
gulp.task('images', ['css', 'js'], function() {
    return gulp.src(imageFiles, {
            base: option.src
        })
        .pipe(imagemin())
        .pipe(gulp.dest(outPut));
});

/**
 * 清理
 * @type {[type]}
 */
var clean = require('gulp-clean');
gulp.task('clean', function() {
    return gulp.src(outPut, {
        read: false
    }).pipe(clean({ force: true }));
});

/**
 * 压缩
 * @return {[type]} [description]
 */
function compress() {
    var archiver = require('archiver'),
        output = fs.createWriteStream(path.join(outPut, '../www.zip')),
        archive = archiver('zip', {
            zlib: {
                level: 9
            }
        });

    archive.on('error', function(err) {
        throw err;
    });

    //压缩完成
    output.on('close', function() {
        output.close();
    });

    archive.pipe(output);
    archive.directory(outPut, "www");
    archive.finalize();
}
·

// 开始任务
gulp.task('start', ['images'], function(cb) {
    compress();
});

//默认
gulp.task('default', ['start']);
