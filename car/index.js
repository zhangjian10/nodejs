var request = require("request");
var cheerio = require('cheerio');
var fs = require('fs');
var async = require('async');

var headers = {
    "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8",
    "Accept-Encoding": "gzip, deflate, sdch",
    "Accept-Language": "zh-CN,zh;q=0.8",
    "Cache-Control": "max-age=0",
    "Connection": "keep-alive",
    "Host": "www.che300.com",
    'User-Agent': 'Mozilla/5.0 (Linux; Android 5.1.1; Nexus 6 Build/LYZ28E) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.23 Mobile Safari/537.36'
};

var seriesIds = [];
/**
 * 获取车
 * @return {[type]} [description]
 */
function getCar() {
    var get = request({
        headers: headers,
        url: "https://www.che300.com/mcrl",
        gzip: true
    }, function(error, response, body) {
        if (error) {
            return console.error(error);
        }
        var $ = cheerio.load(body, { decodeEntities: false });
        var stream = fs.WriteStream('sql/car.sql');

        var brandIds = [];
        $("a[class=modal-content-title]").each(function() {
            var $self = $(this);
            $self.next().find("li").each(function() {
                var $li = $(this);
                var source = $li.data("source");
                brandIds.push(source);
                stream.write("insert into gps_car_brand(brand_id,brand_name,loge_image,first_pinyin) values('" + source + "','" + ($li.find("a").html()) + "',null,'" + $self.html() + "');\r\n");
            });
        });

        stream.end();

 		console.log("抓取品牌"+brandIds.length+"个,开始抓取车系。。。");
        async.mapLimit(brandIds, 100, function(brandId, callback) {
            getSeries(brandId, callback);
        }, function(err, result) {
            console.log("抓取车系"+seriesIds.length+"个,开始抓取车型。。。");
            async.mapLimit(seriesIds, 30, function(seriesId, callback) {
                getModelSeries(seriesId, callback);
            },function(err,result){
            	   console.log("抓取车型"+modelCount+"个,抓取完毕!");
            });
        });
    })
}

/**
 * 获取车系
 * @param  {[type]} brandId [description]
 * @return {[type]}        [description]
 */
function getSeries(brandId, callback) {
    var get = request({
        headers: {
            "Accept": "application/json, text/javascript, */*; q=0.01s",
            "Origin": "https://www.che300.com",
            "Referer": "https://www.che300.com/mcrl",
            'User-Agent': 'Mozilla/5.0 (Linux; Android 5.1.1; Nexus 6 Build/LYZ28E) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.23 Mobile Safari/537.36'
        },
        url: "https://dn-che300-meta.qbox.me/meta/c2c/series_brand" + brandId + ".json",
        gzip: true
    }, function(error, response, body) {
        if (error) {
            addLog("brandId:" + brandId);
            return console.error(error);
        }
        var data = JSON.parse(body);
        for (var i in data) {
            fs.appendFile("sql/gps_car_series.sql", "insert into gps_car_series(series_id,brand_id,seriers_name,index) values('" + data[i].key + "','" + brandId + "','" + data[i].value + "',0);\r\n", function(err) {
                if (err) throw err;
            });
            seriesIds.push(data[i].key);
        }
        callback(null, brandId);
    });
}

var modelCount=0;
/**
 * [getModelSeries description]
 * @param  {[type]} series [description]
 * @return {[type]}        [description]
 */
function getModelSeries(seriesId, callback) {
    var get = request({
        headers: {
            "Accept": "application/json, text/javascript, */*; q=0.01s",
            "Origin": "https://www.che300.com",
            "Referer": "https://www.che300.com/mcrl",
            'User-Agent': 'Mozilla/5.0 (Linux; Android 5.1.1; Nexus 6 Build/LYZ28E) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.23 Mobile Safari/537.36'
        },
        url: "https://dn-che300-meta.qbox.me/meta/c2c/model_series" + seriesId + ".json",
        gzip: true
    }, function(error, response, body) {
        if (error) {
            addLog("seriesId:" + seriesId);
            return console.error(error);
        }
        var data = JSON.parse(body);
        for (var i in data) {
        	modelCount++;
            fs.appendFile("sql/gps_car_model.sql", "insert into gps_car_model(model_id,series_id,model_name,year,index) values('" + data[i].key + "','" + seriesId + "','" + data[i].value + "'," + data[i].year + ",0);\r\n", function(err) {
                if (err) throw err;
            });
        }
        setTimeout(function(){
        	callback(null, seriesId);
        },500);
    });
}

function addLog(message) {
    fs.appendFile("log.log", message + "\r\n", function(error) {

    });
}

getCar();
