import { createRequire } from 'module'; 
const require = createRequire(import.meta.url);
const mysql = require('mysql');

var connection = mysql.createPool({
        host:"localhost",  // 不用改
        user:"root",  // 用户名
        password:"root",  // 密码
        // port:3306,  // 端口号
        database:"dbe3",  // mysql连接端口
        useConnectionPooling: true,
        timezone:"08:00"
})

connection.getConnection(()=>{
    console.log('数据库连接成功！')
})

export default connection;