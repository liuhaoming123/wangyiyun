//功能:服务器程序
//1.引入四个模块
const express = require("express") //web服务器模块
const mysql = require("mysql") //mysql模块
const session = require("express-session")//session模块
const cors = require("cors") //跨域模块
//2.创建连接池
var pool=mysql.createPool({
  host:"127.0.0.1",
  user:"root",
  password:"",
  database:"Ldb",
  proot:3306,
  connectionLimit:15
})
//3.创建web服务器
var server= express();
//4.配置跨域模块
//4.1允许跨域的列表 脚手架
//4.2每次请求验证
server.use(cors({
  origin:["http://127.0.0.1:8080","http://localhost:8080"],
  credentials:true
}))
//5.指定静态资源目录 public
server.use(express.static("public"));
//6.配置session对象 !!!
server.use(session({
  secret:"128安全字符串", //加密文件
  resave:true, //每次请求更新数据
  saveUninitialized:true //保存初始化数据
}));
//7.为服务器绑定端口4000
server.listen(4000);


//配置完毕之后开始自己的功能
//功能一:用户登陆验证
server.get("/login",(req,res)=>{
  //req发送请求,res响应请求
  //1.获取客户端脚手架发来的请求中的用户名和密码
    var u = req.query.uname;
    var p = req.query.upwd;
  //2.创建sql语法并将用户名和密码加入
    var sql = "SELECT id FROM Lz_login WHERE uname=? AND upwd=md5(?)";
  //3.执行sql语句并且获取返回结果
    pool.query(sql,[u,p],(err,result)=>{
      //3.1出现严重错误就报出
      if(err)throw err;
      //3.2否则返回并验证查询结果
      if(result.length==0){
        res.send({code:-1,msg:"用户名或密码有误"})
      }else{
        //如果登录成功就创建一个session对象,并把登录凭证
        //保存到session对象中
        req.session.uid=result[0].id;
        res.send({code:1,msg:"登录成功"})
      }
    })  
})
server.get("/Soda",(req,res)=>{
  var pno = req.query.pno;
  var ps = req.query.pageSize;
  //3:为参数设置默认值  1   20
  if(!pno){pno=1}
  if(!ps){ps=20}
  var sql = "SELECT lid,lname FROM Soda LIMIT ?,?";
  var offset = (pno-1)*ps;
  ps = parseInt(ps);
  pool.query(sql,[offset,ps],(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"查询失败",result})
    }else{
      res.send({code:1,msg:"查询成功",result})
    }
  })
})
server.get("/Sona",(req,res)=>{
  var pno = req.query.pno;
  var ps = req.query.pageSize;
  //3:为参数设置默认值  1   20
  if(!pno){pno=1}
  if(!ps){ps=20}
  var sql = "SELECT lname FROM Sona LIMIT ?,?";
  var offset = (pno-1)*ps;
  ps = parseInt(ps);
  pool.query(sql,[offset,ps],(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"查询失败",result})
    }else{
      res.send({code:1,msg:"查询成功",result})
    }
  })
})
server.get("/Live",(req,res)=>{
  var pno = req.query.pno;
  var ps = req.query.pageSize;
  //3:为参数设置默认值  1   20
  if(!pno){pno=1}
  if(!ps){ps=20}
  var sql = "SELECT lname FROM Live LIMIT ?,?";
  var offset = (pno-1)*ps;
  ps = parseInt(ps);
  pool.query(sql,[offset,ps],(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"查询失败",result})
    }else{
      res.send({code:1,msg:"查询成功",result})
    }
  })
})
server.get("/Singer",(req,res)=>{
  var pno = req.query.pno;
  var ps = req.query.pageSize;
  //3:为参数设置默认值  1   20
  if(!pno){pno=1}
  if(!ps){ps=20}
  var sql = "SELECT lname FROM Singer LIMIT ?,?";
  var offset = (pno-1)*ps;
  ps = parseInt(ps);
  pool.query(sql,[offset,ps],(err,result)=>{
    if(err)throw err;
    if(result.length==0){
      res.send({code:-1,msg:"查询失败",result})
    }else{
      res.send({code:1,msg:"查询成功",result})
    }
  })
})