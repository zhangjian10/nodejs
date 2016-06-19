var crypto = require('crypto'),
    fs = require('fs'),
    fse = require('fs-extra'),
    zlib = require('zlib');


/**
 * [calcMd5 description]
 * @param  {[type]} file  [description]
 * @param  {[type]} slice [description]
 * @return {[type]}       [description]
 */
function calcMd5(file, slice) {
    var md5 = crypto.createHash('md5');
    md5.update(file.toString(), 'utf8');
    return slice > 0 ? md5.digest('hex').slice(0, slice) : md5.digest('hex');
}

/**
 * [getAllFiles description]
 * @param  {[type]} root [description]
 * @return {[type]}      [description]
 */
function getAllFiles(root) {
    var res = {},
        files = fs.readdirSync(root);
    files.forEach(function(file) {
        var pathname = root + '/' + file,
            stat = fs.lstatSync(pathname);

        if (!stat.isDirectory()) {
            res[pathname] = calcMd5(fs.readFileSync(pathname), 0);
        } else {
            res = Object.assign(res, getAllFiles(pathname));
        }
    });
    return res;
}

function diff(newPath, oldPath,outPutPath) {
    var news = {
        path: "/Users/zj/Downloads/2.0.9.2"
    };
    var data={
        new: getAllFiles(newPath),
        old:getAllFiles(oldPath)
    }
    var keys = Object.keys(data.new);

    var files = [];
    for (var i = 0; i < keys.length; i++) {
        var newkey = keys[i];
        var key = newkey.replace(newPath, "");
        var oldkey = oldPath + key;
        if (data.news[newkey] != data.old[oldkey]) {
            files.push({
                filePath: key,
                absPath: newkey
            });
        }
    }

    files.forEach(function(data) {
        fse.copy(data.absPath, outPutPath + data.filePath, function(err) {
            if (err) return console.error(err);
        });
    });
}
exports.diff = diff
