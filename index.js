const express = require("express");
const cors = require("cors");
const bodyParser = require("body-parser");
const mybatisMapper = require("mybatis-mapper");
const mysql = require("mysql2");
var fm = {language: 'sql', indent: '  '};

const app = express();
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.listen(5000,()=>{console.log("connect thành công")})

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    database: 'qlshophoa'
  });
mybatisMapper.createMapper([ './sql.xml' ]);

app.get("/dshoa",function(req, res){
    var query = mybatisMapper.getStatement('sql-select-hoa', 'getHoa');
    connection.query(query, function(err, results) {
        res.json(results); 
    })   
})


app.get("/",function(req, res){
    res.json({
        name: "Nguyễn văn A",
        age: 20
    });  
})
app.post("/themhoa",function(req, res){
    var param ={
        mahoa: req.body.mahoa,
        tenhoa: req.body.tenhoa,
        macd: req.body.macd,
        giaban: req.body.giaban,
        mota: req.body.mota,
        hinh: req.body.hinh
    };
    var query = mybatisMapper.getStatement('sql-select-hoa', 'themhoa', param, fm);
    connection.query(query, function(err, results) {
        res.json({
            thongbao: "Them thanh cong"

        }); 
    })     
})

app.put("/suahoa",function(req, res){
    var param ={
        mahoa: req.body.mahoa,
        tenhoa: req.body.tenhoa,
        macd: req.body.macd,
        giaban: req.body.giaban,
        mota: req.body.mota,
        hinh: req.body.hinh
    };
    var query = mybatisMapper.getStatement('sql-select-hoa','suahoa',param,fm);
    connection.query(query, function(err, results) {
        res.json({
            thongbao: "Đã sửa",
            mahoa: param.mahoa,
            tenhoa: param.tenhoa
        }); 
    })     
})

app.post("/",function(req, res){
    if(req.body.name == "admin"){
        res.json({
            name: "Nguyễn văn A",
            age: 20
    })
    }
    else
    {
        res.json({
            err: "Khong phai admin"         
    })

    }

    
})