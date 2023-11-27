import { createRequire } from 'module'; 
const require = createRequire(import.meta.url);

var express = require('express');
var router = express.Router();
import connection from '../connection.js'

// 管理员获取借阅记录接口
router.post('/borrowslist',(req,res)=>{
    let sql = "SELECT borrows.id,students.Sno,students.name,books.book_name,books.author_name,books.ISBN,borrows.borrow_date,DATE_ADD(borrows.borrow_date,INTERVAL 30 day)date_time,borrows.return_date,if(borrows.return_date IS NULL,'未还','已还') status FROM borrows,students,books WHERE borrows.Sno=students.Sno AND borrows.ISBN=books.ISBN;";
    connection.query(sql,(err,res1)=>{
        let data = res1||[]
        if(data.length == 0){
            res.json({
                msg:'管理员请求借阅记录为空',
                status:0,
                data:data
              })
        }
		else{
            res.json({
                msg:'管理员请求借阅记录成功',
                status:200,
                data:data
              })
        }
    })
})

// 管理员通过名称查询借阅信息
router.post('/searchborrow',(req,res)=>{
    let data = req.body;
    let sql1 = "SELECT borrows.id,students.Sno,students.name,books.book_name,books.author_name,books.ISBN,borrows.borrow_date,DATE_ADD(borrows.borrow_date,INTERVAL 30 day)date_time,borrows.return_date,if(borrows.return_date IS NULL,'未还','已还') status FROM borrows,students,books WHERE borrows.Sno=students.Sno AND borrows.ISBN=books.ISBN AND students.Sno=?;";
    let sql2 = `SELECT borrows.id,students.Sno,students.name,books.book_name,books.author_name,books.ISBN,borrows.borrow_date,DATE_ADD(borrows.borrow_date,INTERVAL 30 day)date_time,borrows.return_date,if(borrows.return_date IS NULL,'未还','已还') status FROM borrows,students,books WHERE borrows.Sno=students.Sno AND borrows.ISBN=books.ISBN AND books.book_name LIKE ?;`;
    connection.query(sql1,[data.info],(err,reader)=>{
        reader = reader||[]
        connection.query(sql2,["%"+data.info+"%"],(err,book)=>{
            book = book||[]
            const data = [...new Set(reader.concat(book))]
            if(data.length > 0){
                res.json({
                    mag:'查询成功！',
                    status:200,
                    data:data
                })
            }
            else{
                res.json({
					msg:'查询失败！',
					status:0
				})
            }
        })
    })
})

// 人员管理
// 管理员获取人员信息
router.post('/initreaderlist',(req,res)=>{
    let sql = "select DISTINCT students.Sno,name,telephone,hold,overtime,if(students.ROLE =0,'用户','黑名单') bl,students.ROLE FROM ((SELECT 0 overtime,students.Sno Sno FROM students WHERE students.Sno NOT IN (SELECT borrows.Sno Sno FROM borrows WHERE borrows.Sno AND ((DATE_ADD(borrows.borrow_date,INTERVAL 30 DAY) < borrows.return_date AND borrows.return_date IS NOT NULL) OR DATE_ADD(borrows.borrow_date,INTERVAL 30 DAY) < NOW()) GROUP BY borrows.Sno))UNION(SELECT COUNT(*) overtime ,borrows.Sno Sno FROM borrows WHERE borrows.Sno AND ((DATE_ADD(borrows.borrow_date,INTERVAL 30 DAY) < borrows.return_date AND borrows.return_date IS NOT NULL) OR DATE_ADD(borrows.borrow_date,INTERVAL 30 DAY) < NOW()) GROUP BY borrows.Sno ))AS Statistics ,students where  Statistics.Sno = students.Sno AND students.Role != 1;";
    connection.query(sql,(err,res1)=>{
        let data = res1||[]
        res.json({
            msg:'管理员请求人员记录成功',
            status:200,
            data:data
        })
    })
})
// 移出黑名单
router.post('/removeblacklist',(req,res)=>{
    let data = req.body;
    let sql="UPDATE students SET students.ROLE=0 WHERE students.Sno = ?;";
    connection.query(sql,[data.Sno],(err,res1)=>{
        res.json({
            msg:'移出黑名单成功',
            status:200,
        })
    })
})

//移入黑名单
router.post('/addblacklist',(req,res)=>{
    let data = req.body;
    let sql="UPDATE students SET students.ROLE=2 WHERE students.Sno = ?;";
    connection.query(sql,[data.Sno],(err,res1)=>{
        res.json({
            msg:'移入黑名单成功',
            status:200,
        })
    })
})
// 管理员删除人员信息
router.post('/delperson',(req,res)=>{
    let data = req.body;
    let sql = "DELETE from students WHERE students.Sno = ?;";
    connection.query(sql,[data.Sno],(err,res1)=>{
        res.send({
            msg:'删除人员成功',
            status:200,
        })
    })
})

// 图书管理
// 管理员添加图书
router.post('/adminaddbooks',(req,res)=>{
    let data = req.body
    let sql = "INSERT INTO `Books` (ISBN,book_name,total,`current`,author_name,classification) VALUES(?,?,?,?,?,(SELECT classifications.id FROM classifications WHERE classifications.classification = ?));";
    let sql0 = "select * from classifications where ?=classifications.classification;";
    connection.query(sql0,[data.classification],(err0,res0)=>{
        if(res0.length>0){
            console.log("1")
            connection.query(sql,[data.ISBN,data.book_name,data.total,data.total,data.author_name,data.classification],(err,res1)=>{
                if(err){
                    console.log("3")
                    res.send({
                        msg:'添加图书失败',
                        status:0,
                    })
                }else{
                    console.log("4")
                    res.send({
                        msg:'添加图书成功',
                        status:200,
                    })
                }
            })
        }
        else{
            console.log("2")
            res.send({
                msg:'添加图书失败，请检查分类是否正确',
                status:50,
            })
        }
    })
})

// 管理员修改图书信息
router.post('/changebookinfo',(req,res)=>{
    let data = req.body
    let choice = data.status
    switch(choice){
        case '1':{
            // 修改书名
            let sql = "UPDATE books SET books.book_name = ? WHERE books.ISBN = ?;";
            connection.query(sql,[data.book_name,data.ISBN],(err,res1)=>{
                res.send({
                    msg:'修改书名成功',
                    status:200,
                })
            })

            break;
        }
        case '2':{
            // 修改作者
            let sql = "UPDATE books SET books.author_name = ? WHERE books.ISBN = ?;";
            connection.query(sql,[data.author_name,data.ISBN],(err,res1)=>{
                res.send({
                    msg:'修改作者成功',
                    status:200,
                })
            })
            break;
        }
        case '3':{
            // 修改类型
            let sql = `UPDATE books,classifications SET books.classification = classifications.id WHERE books.ISBN = ? AND classifications.classification LIKE ?;`;
            connection.query(sql,["%"+data.ISBN+"%","%"+data.classification+"%"],(err,res1)=>{
                res.send({
                    msg:'修改类型成功',
                    status:200,
                })
            })
            break;
        }
        case '4':{
            // 修改馆藏数
            let sql = "UPDATE books SET books.current = books.current + ? , books.total = books.total + ? WHERE books.ISBN = ?;";
            connection.query(sql,[data.difference,data.difference,data.ISBN],(err,res1)=>{
                res.send({
                    msg:'修改库存成功！',
                    status:200
                })
            })
            break;
        }
        default:break;
    }
})

// 管理删除图书
router.post('/delbook',(req,res)=>{
    let data = req.body
    let sql = "DELETE FROM books WHERE books.ISBN = ?;";
    connection.query(sql,[data.ISBN],(err,res1)=>{
        res.send({
            msg:'删除图书成功',
		    status:200
        })
    })
})

// 获取通知
router.post('/getnotion',(req,res)=>{
    let sql = "select notion FROM NOTION;";
    connection.query(sql,(err,res1)=>{
        let data = res1
        res.json({
            msg:'获取通知成功',
		    status:200,
            data:data
        })
    })
})

// 更改通知
router.post('/changenotion',(req,res)=>{
    let data = req.body.infoObj.data
    let sql = "UPDATE NOTION SET notion = ?;";
    console.log(data)
    connection.query(sql,[data],(err,res1)=>{
        res.json({
            msg:'修改通知成功',
            status:200
        })
    })
})


// module.exports = router
export default router