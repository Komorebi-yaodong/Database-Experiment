import { createRequire } from 'module'; 
const require = createRequire(import.meta.url);

const fs = require('fs');
const path = require('path');
const bodyParser = require('body-parser');
const express = require('express');
const app = express();

import admin from './api/admin.js'
import reader from './api/reader.js'
import all from './api/all.js'

app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());

// 后端api路由
app.use(admin);
app.use(reader);
app.use(all);

// console.log(app);

// 监听端口
app.listen(8080, (err) => {
    if (!err) console.log('服务器启动成功!');
  
  })
