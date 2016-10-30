var request = require("request");
var fs = require('fs');
var async = require('async');

var headers = {
    "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8",
    "Accept-Encoding": "gzip, deflate, sdch",
    "Accept-Language": "zh-CN,zh;q=0.8",
    "Cache-Control": "max-age=0",
    "Connection": "keep-alive",
    "Host": "wy.guahao.com",
    "Referer": "",
    'User-Agent': 'Mozilla/5.0 (Linux; Android 5.1.1; Nexus 6 Build/LYZ28E) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.23 Mobile Safari/537.36'
};

// http://wy.guahao.com/fastorder/expertlist?hospitalId=448f9a19-8cd2-4ccf-a152-3930ec622d9f000&deptId=563cbb53-1294-4e46-a411-358dcff98f27000

var expertlist = [];
var reserveExpertlist = [];
/**
 * 获取专家信息
 * @return {[type]} [description]
 */
function getExpertlist(page) {
    page = page || 1;
    var url = "http://wy.guahao.com/json/white/fastorder/expertlist?hdi=563cbb53-1294-4e46-a411-358dcff98f27000&hospitalId=448f9a19-8cd2-4ccf-a152-3930ec622d9f000&pageNo=" + page;

    var get = request({
        headers: headers,
        url: url,
        gzip: true
    }, function(error, response, body) {
        if (error) {
            return console.error(error);
        }
        var json = JSON.parse(body);
        var listData = json.data.list;

        for (var i = 0; i < listData.length; i++) {
            data = listData[i];

            var tempData = {};
            tempData.id = data.id; //id
            tempData.name = data.name; //姓名
            tempData.commentScore = data.commentScore; //评分
            tempData.orderCount = data.orderCount; //量
            tempData.hospitalId = data.hospitalId; //医院id
            tempData.featureHL = data.featureHL; //擅长
            tempData.photo = data.photo; //头像
            tempData.sex = data.sex; //性别

            var listDTO = data.expertHospDetpList[0].hospDeptNameDTOList; //排班

            for (var dto in listDTO) {
                dto = listDTO[dto];
                if (dto["name"] === "专家门诊") {
                    var officeId = dto["id"];
                    tempData.officeId = officeId;
                }
            }
            connection.query('INSERT INTO expert SET ?', tempData, function(err, result) {
                if (err) {
                    console.log(err);
                }
            });

            expertlist.push(tempData);
        }

        console.log(page);

        if (listData.length === 12) {
            getExpertlist(++page);
            return;
        }
        console.log(expertlist.length);
    })
}

/**
 * 获取车系
 * @param  {[type]} brandId [description]
 * @return {[type]}        [description]
 */
function getSchedule(expert, callback) {
    var url = "http://wy.guahao.com/json/white/expert/shiftcase/?doctorId=" + expert.id + "&officeId=" + expert.officeId;
    // console.log(url);
    var get = request({
        headers: headers,
        url: url,
        gzip: true
    }, function(error, response, body) {
        if (error) {
            return console.error(error);
        }
        var json = JSON.parse(body);
        console.log(json);
        if (json.code === "0") {


            var schedules = json.data[0].scheduleData.schedules;
            if (schedules) {

                for (var schedule in schedules) {

                    schedule = schedules[schedule].morning;

                    var new_schedule = {
                        apm: schedule.apm,
                        date: schedule.date,
                        price: schedule.price,
                        expert_id: expert.id
                    };

                    connection.query('INSERT INTO schedule SET ?', new_schedule, function(err, result) {
                        if (err) {
                            console.log(err);
                        }
                    });
                }
            }
        }
        setTimeout(function() {
            callback(null, expert);
        }, 1000);
    });
}

var mysql = require('mysql');
var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'AAA111aaa',
    database: 'registration'
});
connection.connect();

connection.query('SELECT id,officeId FROM `expert`', function(err, rows, fields) {
    if (err) throw err;

    var expert_list = rows;
    async.mapLimit(expert_list, 1, function(expert, callback) {
        getSchedule(expert, callback);
    }, function(err, result) {

    });
});


// getExpertlist();
