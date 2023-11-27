import {createRouter,createWebHashHistory} from "vue-router"

// 路由引入
import LoginRegister from '../views/LoginRegister/index.vue'
import Home from '../views/Home/index.vue'
import Introduce from '../views/Home/Introduce/index.vue'
import SearchBooks from '../views/Home/SearchBooks/index.vue'
import ReaderBorrow from '../views/Home/ReaderBorrows/index.vue'
import AdminBorrows from '../views/Home/AdminBorrows/index.vue'
import AdminPerson from '../views/Home/AdminPerson/index.vue'

const routes = [
    {
        path:'/LoginRegister',//注册界面
        component:LoginRegister
    },
    {
        path:'/Home',
        component:Home,
        children:[
            {
                path:'',
                component:Introduce,
            },
            {
                path:"Introduce",
                component:Introduce,
            },
            {
                path:"Search",
                component:SearchBooks,
            },
            {
                path:"MyBorrows",
                component:ReaderBorrow,
            },
            {
                path:"AdminBorrows",
                component:AdminBorrows,
            },
            {
                path:"AdminPerson",
                component:AdminPerson,
            }
        ]
    },
    {
        path:'/:path(.*)',
        redirect: '/LoginRegister'
    },
]

const router = createRouter({
    history:createWebHashHistory(),
    routes,
})

export default router