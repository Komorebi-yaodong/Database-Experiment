import {getNotion} from '../../api/index.js'
import qs from "qs"
const Notion = {
    state(){
        return{
            notion:'',
        }
    },
    mutations:{
        GETNOTION(state,data){
            state.notion = data[0].notion
        },
    },
    actions:{
        get_notion({commit}){
            //API
            getNotion().then(res=>{
                commit('GETNOTION',res.data)
                console.log(res);
            },
            err=>{
                console.log(err.message);
            })
        }
    }
}

export default Notion