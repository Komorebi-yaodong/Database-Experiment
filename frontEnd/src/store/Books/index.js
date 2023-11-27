import {initBooksList} from '../../api/index.js'
import qs from "qs"
const Books={
    state(){
        return{
            booksList:[]
        }
    },
    mutations:{
        INITBOOKSLIST(state,data){
            data = data || []
            // console.log("图书初始化");
            // console.log(data);
            state.booksList = data.filter(item=>{
                return item.current>0
            })
            
        }
    },
    actions:{
        initBooksLists({commit}){
            initBooksList().then(res=>{
                if(res.status==200){
                    commit('INITBOOKSLIST',res.data);
                    // console.log("图书初始化");
                    // console.log(res.data);
                }
            },
            err=>{
                err=>console.log(err.message)
            })
        }
    }
}

export default Books