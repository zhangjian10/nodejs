var request = require("request");
var cheerio = require('cheerio');
var fs = require('fs');
var async = require('async');
var Iconv = require('iconv').Iconv;
var iconv = new Iconv('GBK', 'UTF-8//TRANSLIT//IGNORE');

var headers = {
    "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8",
    "Accept-Encoding": "gzip, deflate, sdch",
    "Accept-Language": "zh-CN,zh;q=0.8",
    "Cache-Control": "max-age=0",
    "Connection": "keep-alive",
    "Host": "m.biquge.la",
    'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36'
};

function getSection() {
    var get = request({
        headers: headers,
        url: "http://m.biquge.la/booklist/11835.html",
        gzip: true,
        encoding: null
    }, function(error, response, body) {
        if (error) {
            return console.error(error);
        }
        body = iconv.convert(body).toString();
        var $ = cheerio.load(body, { decodeEntities: false });
        var pages = [];
        $(".bgg a").each(function(i, j) {
            var $self = $(this);
            pages.push({
                url: "http://m.biquge.la/" + $self.attr("href"),
                title: $self.text()
            });
        });
        pages = pages.reverse();

        fs.mkdir("outPut", 0777, function(err) {

            fs.writeFile("outPut/SUMMARY.md", "# Summary \n\n", function() {});

            fs.mkdir("outPut/section", 0777, function(err) {
                var index = 1;
                async.mapLimit(pages, 10, function(data, callback) {
                    getContent(index, data, callback);
                    index++;
                });

                for (var i = 0; i < pages.length; i++) {
                    var data = pages[i];
                    appendSummary("*  [" + data.title + "](section/" + (i + 1) + ".md)");
                }
            });
        });
    });
}

function getContent(index, data, callback) {
    var get = request({
        headers: headers,
        url: data.url,
        gzip: true,
        encoding: null
    }, function(error, response, body) {
        if (error) {
            return console.error(error);
        }
        body = iconv.convert(body).toString();
        var $ = cheerio.load(body, { decodeEntities: false });

        var title = $("#nr_title").text().trim();
        var content = data.title + "<br />" + $("#nr1").text().replace(/&nbsp;&nbsp;&nbsp;&nbsp;/g, "\r").replace(/[\r\n]/g, "<br />").replace("shipei_x()", "");
        addSection(index, content);
        console.log(title);
        callback(null, data);
    });
}

function addSection(index, content) {
    fs.writeFile("outPut/section/" + index + ".md", content, function(err) {
        if (err) throw err;
    });
}

function appendSummary(summary) {
    fs.appendFile("outPut/SUMMARY.md", summary + "\n", function(err) {
        if (err) throw err;
    });
}
getSection();
