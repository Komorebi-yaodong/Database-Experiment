import {createStore} from 'vuex'

// 引入模块
import User from './User'
import Borrows from './Borrows'
import Books from './Books'
import Notion from './Notion'

const store = createStore({
    modules:{
        User:User,
        Borrows:Borrows,
        Books:Books,
        Notion:Notion,
    }
})

export default store