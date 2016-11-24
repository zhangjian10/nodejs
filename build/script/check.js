const gulp = require('gulp');
const eslint = require('gulp-eslint');
const argv = require('yargs').argv;

const path = require('path');
const basePath = argv["path"];

var config = {
    src: path.normalize(basePath + "/src"),
    outPut: path.normalize(basePath + "/dist"),
    ignore: ["component","css-sprite"]
}

/**
 * [getSrc description]
 * @return {[type]} [description]
 */
function getSrc() {
    var src = [];
    for (var i in arguments) {
        src.push(path.normalize(config.src + arguments[i]));
    }

    for (var folder in config.ignore) {
        folder = config.ignore[folder];
        if (folder) {
            src.push(path.normalize("!" + config.src + "/" + folder + "/**"));
        }
    }

    return src;
}

gulp.task('eslint', () => {
    var src = getSrc("/**/*.js");
    return gulp.src(src)
        .pipe(eslint({
            rules: {
                // Possible Errors
                'comma-dangle': [2, 'never'],
                'no-cond-assign': 2,
                'no-constant-condition': 2,
                'no-control-regex': 2,
                'no-debugger': 2,
                'no-dupe-args': 2,
                'no-dupe-keys': 2,
                'no-duplicate-case': 2,
                'no-empty-character-class': 2,
                'no-extra-semi': 2,
                'no-func-assign': 2,
                'no-inner-declarations': 2,
                'no-invalid-regexp': 2,
                'no-irregular-whitespace': 2,
                'no-negated-in-lhs': 2,
                'no-obj-calls': 2,
                'no-regex-spaces': 2,
                'no-sparse-arrays': 2,
                'no-unreachable': 2,
                'use-isnan': 2,
                'valid-typeof': 2,
                'no-unexpected-multiline': 2,

                // Best Practices
                'guard-for-in': 2,
                'no-alert': 2,
                'no-caller': 2,
                // 'no-extend-native': 2,
                'no-extra-bind': 2,
                'no-invalid-this': 2,
                'no-multi-spaces': 2,
                'no-multi-str': 2,
                'no-new-wrappers': 2,
                'no-throw-literal': 2,
                'no-with': 2,

                // Strict Mode
                'no-unused-vars': [2, { args: 'none' }]
            },
            globals: [
                'jQuery',
                '$'
            ],
            envs: [
                'browser'
            ]
        }))
        .pipe(eslint.format())
        .pipe(eslint.failAfterError());
});

const csslint = require('gulp-csslint');
csslint.addFormatter('csslint-stylish');

gulp.task('csslint', () => {
    var src = getSrc("/**/*.css");
    return gulp.src(src)
        .pipe(csslint({
            rules: {
                'box-model': 2,
                'display-property-grouping': 2,
                'duplicate-properties': 2,
                'empty-rules': 2,
                'font-faces': 2,
                'import': 2,
                'universal-selector': 2, //通用选择器
                'unqualified-attributes': 2,
                'duplicate-background-images': 2,
                'zero-units': 2,
                'ids': 2,
                'shorthand': 1,
                'important': 1
                    // 'known-properties':2,
            }
        }))
        .pipe(csslint.formatter('stylish'));
});

const htmlhint = require("gulp-htmlhint");
gulp.task('htmlhint', () => {
    var src = getSrc("/**/*.html");
    return gulp.src(src)
        .pipe(htmlhint())
        .pipe(htmlhint.reporter("htmlhint-stylish"))
        .pipe(htmlhint.failReporter());
});

gulp.task('default', ['eslint', 'htmlhint', 'csslint']);
gulp.task('h5-check', ['eslint', 'htmlhint', 'csslint']);

exports.config = config;
exports.getSrc = getSrc;