const gulp = require('gulp');
const buffer = require('vinyl-buffer');
const merge = require('merge-stream');
const argv = require('yargs').argv;
const spritesmith = require('gulp.spritesmith');
const path = require('path');

const basePath = path.normalize(argv["path"]);

var config = {
    src: path.normalize(basePath + "/image/*.png"),
    name: basePath.split(path.sep).pop()
}


gulp.task('default', function() {
    var spriteData = gulp.src(config.src).pipe(spritesmith({
        imgName: "sprite_" + config.name + '.png',
        cssName: "sprite_" + config.name + '.css',
        padding: 10,
        cssVarMap: function(sprite) {
            sprite.name = config.name + "-" + sprite.name;
        }
    }));

    var imgStream = spriteData.img
        .pipe(buffer())
        .pipe(gulp.dest(basePath));

    var cssStream = spriteData.css
        .pipe(gulp.dest(basePath));

    return merge(imgStream, cssStream);
});
