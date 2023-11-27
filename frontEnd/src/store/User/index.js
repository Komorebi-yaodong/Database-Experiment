import {initReaderList} from '../../api/index.js'
import qs from "qs"
// 用户数据
const User = {
    state(){
        return{
            readerInfo:{
                readerId:'',
                readerName:'',
                readerPhone:'',
                hold:0,
                overTimes:0,
                role:0,  // 0：普通用户，1：管理员用户，2：管理员设置黑名单
            },
            readerList:[],
        }
    },
    mutations:{
        // 保存用户信息
        SETUSERINFO(state,data){
            // console.log(data);
            let {readerId,readerName,readerPhone,hold,overTimes,role} = data
            state.readerInfo = {readerId,readerName,readerPhone,hold,overTimes,role};
        },
        INITREADERLIST(state,data){
            state.readerList = data
        }
    },
    actions:{
        setReaderInfo({commit},data){
            commit('SETUSERINFO',data)
        },
        initReadersList({commit}){
            //API
            initReaderList().then(res=>{
                // console.log(res);
                commit('INITREADERLIST',res.data)
            },
            err=>{
                console.log(err.message);
            })
            
        }
    }
}

export default User