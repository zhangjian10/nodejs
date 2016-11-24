const gulp = require('gulp');
const fs = require('fs');
const archiver = require('archiver');
const path = require('path');
const exec = require('child_process').exec;

const argv = require('yargs').argv;

const basePath = argv["path"];
const check = require('./check.js');

var config = check.config;
config.outPut = path.normalize(basePath + "/dist")


gulp.task('default', (cb) => {
    exec("h5-build", function(err) {
        if (err) {
            console.log(err);
            return;
        }
        pack(cb);
    })
});

function pack(cb) {
    var output = fs.createWriteStream(path.normalize(basePath + "/h5.zip"));
    let archive = archiver('zip');

    archive.on('error', function(err) {
        throw err;
    });
    archive.on('end', function(err) {
        cb();
    });

    archive.pipe(output);
    archive.directory(config.outPut, "h5");
    archive.finalize();
}
