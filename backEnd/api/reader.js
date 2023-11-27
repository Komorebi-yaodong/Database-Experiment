import { createRequire } from 'module'; 
const require = createRequire(import.meta.url);

var express = require('express');
var router = express.Router();
import connection from '../connection.js'

// 重新获取用户信息
router.post('/initreader',(req,res)=>{
    let data = req.body
    let sql = "select Sno,name,telephone,hold,overtime,ROLE from students,(SELECT COUNT(*) overtime FROM borrows WHERE borrows.Sno = ? AND ((DATE_ADD(borrows.borrow_date,INTERVAL 30 DAY) < borrows.return_date AND borrows.return_date IS NOT NULL) OR DATE_ADD(borrows.borrow_date,INTERVAL 30 DAY) < NOW()))AS OverTimes where students.Sno = ?;";
    connection.query(sql,[data.Sno,data.Sno],(err,res1)=>{
        if(err){
            console.log("重新获取用户信息",res1);
            return;
        }
        if(res1.length > 0){
            res.json({
                msg:'获取用户信息成功',
                status:200,
                readerId:res1[0].Sno,
                readerName:res1[0].name,
                readerPhone:res1[0].telephone,
                hold:res1[0].hold,
                overTimes:res1[0].overtime,
                role:res1[0].ROLE
            })
        }else{
            res.json({
                msg:'获取用户信息失败',
                status:0
            })
        }
    })
})

// 用户注册接口
router.post('/register',(req,res)=>{
    let data = req.body;
    console.log("注册接收的数据",data);
    if(!data){
        res.json({
            msg:'没有提交数据！',
            status:0
        })
        return false;
    }
    if(!data.Sno){
        res.json({
            msg:'学号/职工号不能为空',
            status:0
        })
        return false;
    }
    if(!data.name){
        res.json({
            msg:'姓名不能为空',
            status:0
        })
        return false;
    }
    if(!data.telephone){
        res.json({
            msg:'手机号不能为空',
            status:0
        })
        return false;
    }
    if (!data.password_hash) {
        res.json({
          msg: '密码不能为空',
          status: 0
        })
        return false;
    }
    let sql1 = "SELECT * FROM students WHERE students.telephone = ? ;";
    connection.query(sql1,[data.telephone],(err,res1)=>{
        if(err){
            console.log(res1);
        }
        if(res1.length>0){
            res.json({
                msg:'该手机号已经被注册！',
                status:0
            })
            console.log("注册",res)
        }
        else{
            let sql2 = "INSERT INTO students VALUES(?,?,?,?,?,?);"
            connection.query(sql2,[data.Sno,data.name,data.password_hash,data.telephone,0,0],(err,res1)=>{
                if(err){
                    res.json({
                        msg:"注册失败",
                        status:0
                    })
                }
                res.json({
                    msg:"注册成功",
                    status:200
                })
            })
        }
    })
})

// 用户请求借阅记录接口
router.post('/borrows',(req,res)=>{
    let data = req.body
    let sql = "SELECT borrows.id,borrows.return_date,borrows.borrow_date,DATE_ADD(borrows.borrow_date,INTERVAL 30 DAY) date_time,books.book_name,books.author_name,books.ISBN,classifications.classification, if(borrows.return_date IS NULL,'未还','已还')`status` FROM borrows,books,classifications WHERE borrows.ISBN=books.ISBN AND books.classification=classifications.id AND borrows.Sno = ? ORDER BY borrows.id;";
    connection.query(sql,[data.Sno],(err,res1)=>{
        let data = res1||[]
        if(data.length == 0){
            res.json({
                msg:'读者请求借阅记录为空',
                status:0,
            })
        }
        else{
            res.json({
                msg:'读者请求借阅记录成功',
                status:200,
                data:res1
              })
        }
    })
})

// 用户借书接口
router.post('/addborrow',(req,res)=>{
    let data = req.body
    let sql = "INSERT INTO borrows (Sno,ISBN,borrow_date) VALUES(?,?,NOW());";
    connection.query(sql,[data.Sno,data.ISBN],(err,res1)=>{
        if(err){
            res.json({
                msg:'借书失败！',
                status:0
            })
        }
        else{
            res.json({
                msg:'借书成功！',
                status:200
            })
        }
    });
    
})

// 用户还书接口
router.post('/returnbook',(req,res)=>{
    let data = req.body
    let sql = "UPDATE borrows SET borrows.return_date = NOW() WHERE borrows.id = ?;";
    connection.query(sql,[data.id],(err,res1)=>{
        if(err){
            res.json({
                msg:'还书失败！',
                status:0
            })
        }else{
            res.json({
                msg:'还书成功！',
                status:200
            })
        }
    });
})
// module.exports = router
export default router