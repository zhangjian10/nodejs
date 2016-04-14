'use strict';
var through      = require('through2');
var fs           = require('fs');
var path         = require('path');

function build(basePath) {
    basePath=path.normalize(basePath);
	return through.obj(function (file, enc, cb) {

        if (!file.isNull()) {
            var appfile=path.normalize(file.base+basePath+file.relative);

            fs.exists(appfile, function(exists) {
              if (exists) {
                var data=fs.readFileSync(appfile,'utf8');
                file.contents = Buffer.concat([file.contents,new Buffer(data)]);
              }
            });
        }
        this.push(file);

        cb();
    }, function (cb) {
        cb();
    });
}

module.exports = build;
