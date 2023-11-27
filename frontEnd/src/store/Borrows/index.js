import {initBorrowslist,initborrows} from '../../api/index.js'
import qs from "qs"
const Borrows = {
    state(){
        return{
            myBorrows:[],
            allBorrows:[]
        }
    },
    mutations:{
        MYBORROWS(state,data){
            state.myBorrows = data
        },
        ALLBORROWS(state,data){
            state.allBorrows = data
        },
    },
    actions:{
        initMyBorrows({commit},data){
            initborrows(data).then(res=>{
                // console.log(res.data);
                commit('MYBORROWS',res.data)
            },
            err=>{
                console.log(err.message);
            })
        },
        initAllBorrows({commit}){
            initBorrowslist().then(res=>{
                commit('ALLBORROWS',res.data)
            },
            err=>{
                console.log(err.message);
            })
        },
    }
}

export default Borrows