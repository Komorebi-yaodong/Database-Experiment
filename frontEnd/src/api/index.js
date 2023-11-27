// 对所有的api接口进行统一管理
import requests from './request'

// 登录接口：'/login'
export const login = (readerInfo) => requests({
    url: '/login',
    method: 'post',
    data: readerInfo
})

// 图书接口：'/books'
export const initBooksList = () => requests({
    url: '/books',
    method: 'post'
})

// 书籍查询接口：'/searchbook'
export const searchBook = (bookNameObj) => requests({
    url: '/searchbook',
    method: 'post',
    data: bookNameObj
})

// 重新获取用户信息：'/initreader'
export const initReader = (readerId) => requests({
    url: '/initreader',
    method: 'post',
    data: readerId
})

// 用户注册接口：'/register'
export const register = (readerInfo)=>requests({
    url:'/register',
    method:'post',
    data:readerInfo
})

// 用户请求借阅记录接口：'/borrows'
export const initborrows = (readerObj) => requests({
    url: '/borrows',
    method: 'post',
    data: readerObj
})
// 用户借书接口：'/addborrow'
export const addBorrow = (borrowObj) => requests({
    url: '/addborrow',
    method: 'post',
    data: borrowObj
})

// 用户还书接口：'/returnbook'
export const returnBook = (infoObj) => requests({
    url: '/returnbook',
    method: 'post',
    data: infoObj
})

// 管理员获取借阅记录接口：'/borrowslist'
export const initBorrowslist = () => requests({
    url: '/borrowslist',
    method: 'post'
})

// 管理员通过名称查询借阅信息接口：'/searchborrow'
export const searchBorrow = (infoObj) => requests({
    url: '/searchborrow',
    method: 'post',
    data:infoObj
})

// 管理员获取人员信息：'/initreaderlist'
export const initReaderList = () => requests({
    url: '/initreaderlist',
    method: 'post',
})

// 移入黑名单：'/addblacklist'
export const addBlackList = (infoObj) => requests({
    url: '/addblacklist',
    method: 'post',
    data:infoObj
})

// 移出黑名单：'/removeblacklist'
export const removeBlackList = (infoObj) => requests({
    url: '/removeblacklist',
    method: 'post',
    data:infoObj
})

// 管理员删除人员信息：'/delperson'
export const delPerson = (infoObj) => requests({
    url: '/delperson',
    method: 'post',
    data:infoObj
})

// 管理员添加图书：'/adminaddbooks'
export const addBooks = (infoObj) => requests({
    url: '/adminaddbooks',
    method: 'post',
    data:infoObj
})

// 管理员修改图书信息：'/changebookinfo'
export const changeBookInfo = (infoObj) => requests({
    url: '/changebookinfo',
    method: 'post',
    data:infoObj
})

// 管理删除图书：'/delbook'
export const delBook = (infoObj) => requests({
    url: '/delbook',
    method: 'post',
    data:infoObj
})

// 获取通知：'/getNotion'
export const getNotion = () => requests({
    url: '/getnotion',
    method: 'post',
})

// 更改通知：'/changeNotion'
export const changetNotion = (infoObj) => requests({
    url: '/changenotion',
    method: 'post',
    data:infoObj
})