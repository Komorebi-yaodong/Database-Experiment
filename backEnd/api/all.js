import { createRequire } from 'module'; 
const require = createRequire(import.meta.url);
const mysql = require('mysql');
var express = require('express');
var router = express.Router();
import connection from '../connection.js'

// 登录接口
router.post('/login',(req,res)=>{
    let data = req.body;
    data = JSON.stringify(data)
    data = JSON.parse(data)
    // console.log("登录接收的数据",data);
    //判断接受数据是否为空
    if(!data){
        res.json({
            msg:'没有提交数据',
            status:0
        })
        return false;
    }
    // 管理员/学生验证
    // 学号/职工号校验
    if(!data.Sno){
        res.json({
            msg: '学号不能为空',
            status: 0
        })
        return false;
    }
    if(!data.password_hash){
        res.json({
            msg: '密码不能为空',
            status: 0
        })
        return false;
    }
    // 管理员：
    if (data.isAdmin == 'true'){
        let sql = "select * from students where students.role=1 and students.Sno = ? and students.password_hash = ?;";
        connection.query(sql,[data.Sno,data.password_hash],(err,res1)=>{
            if(err){
                console.log("管理员信息：",res1);
            }
            // console.log("管理员信息：",res1);
            if(res1.length > 0){
                res.json({
                    msg:'管理员登陆成功',
                    status:200,
                    readerId:res1[0].Sno,
                    readerName:res1[0].name,
                    readerPhone:res1[0].telephone,
                    borrowTimes:0,
                    overTimes:0,
                    role:1,
                })
            }
            else{
                res.json({
                    msg:'管理员账号或密码错误！',
                    status:0
                })
            }
        })
    }
    else{
        let sql = "select Sno,name,telephone,hold,overtime,ROLE from students,(SELECT COUNT(*) overtime FROM borrows WHERE borrows.Sno = ? AND ((DATE_ADD(borrows.borrow_date,INTERVAL 30 DAY) < borrows.return_date AND borrows.return_date IS NOT NULL) OR DATE_ADD(borrows.borrow_date,INTERVAL 30 DAY) < NOW()))AS OverTimes where students.role !=1 and students.Sno = ? and students.password_hash = ?;";
        connection.query(sql,[data.Sno,data.Sno,data.password_hash],(err,res1)=>{
            if(err){
                console.log("用户信息：",res1);
            }
            if(res1.length > 0){
                res.json({
                    msg:'用户登陆成功',
                    status:200,
                    readerId:res1[0].Sno,
                    readerName:res1[0].name,
                    readerPhone:res1[0].telephone,
                    hold:res1[0].hold,
                    overTimes:res1[0].overtime,
                    role:res1[0].ROLE,
                })
            }
            else{
                res.json({
                    msg:'用户账号或密码错误或该用户未注册！',
                    status:0
                })
            }
        })
    }
})

// 图书接口
router.post('/books',(req,res)=>{
    let sql = "SELECT books.book_name,books.author_name,books.ISBN,classifications.classification,classifications.location,books.current,books.total FROM books,classifications WHERE books.classification = classifications.id;";
    connection.query(sql,(err,res1)=>{
        let data = res1||[]
        // console.log("书本初始化");
        // console.log(res1);
        if(data.length>0){
            res.json({
                msg:'书籍请求成功',
                status:200,
                data:res1
            })
        }else{
            res.json({
                msg: '书籍请求数据为空',
                status: 0,
              })
        }
    })
})

// 书籍查询接口
router.post('/searchbook',(req,res)=>{
    let data = req.body
    let sql1 = `SELECT books.book_name,books.author_name,books.ISBN,classifications.classification,classifications.location,books.current,books.total FROM books,classifications WHERE books.classification = classifications.id AND books.book_name LIKE ${mysql.escape("%"+data.info+"%")};`;
    let sql2 = `SELECT books.book_name,books.author_name,books.ISBN,classifications.classification,classifications.location,books.current,books.total FROM books,classifications WHERE books.classification = classifications.id AND books.author_name LIKE ${mysql.escape("%"+data.info+"%")};`;
    let sql3 = "SELECT books.book_name,books.author_name,books.ISBN,classifications.classification,classifications.location,books.current,books.total FROM books,classifications WHERE books.classification = classifications.id AND books.ISBN=?;"
    connection.query(sql1,(err,book)=>{
        book = book||[]
        connection.query(sql2,(err,author)=>{
            connection.query(sql3,[data.info],(err,ISBN)=>{
                const data = [...new Set(book.concat(author,ISBN))]
                if(data.length>0){
                    res.json({
                        msg: '查询成功！',
                        data: data,
                        status: 200
                      })
                }
                else{
                    res.json({
                        msg: '查询结果为空！',
                        status: 0
                      })
                }
            })
        })
    })
})
// module.exports = router
export default router