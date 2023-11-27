<script>
import {initReader,changetNotion} from '../../../api/index.js'
import { Search } from '@element-plus/icons-vue'
import qs from "qs"
export default{
    name:"Introduce",
    data:function(){
        
        return{
            changeWay:"修改公告",
            newNotion:"",
        }
    },
    methods:{
        changetNotion(e){  // 更改公告
            this.loading = true;
            let infoObj = {data:this.newNotion}
            changetNotion(qs.stringify({infoObj})).then(
                (res)=>{
                    this.loading = false;
                    if(res.status==0){
                        this.$message({
                            showClose:true,
                            message:res.message,
                            type:"error",
                        });
                    }else if(res.status == 200){
                        this.loading = false;
                        this.$message({
                        showClose: true,
                        message: res.message,
                        type: "success",
                        });
                    }
                    this.$store.dispatch("get_notion");
                }
            )
            this.loading = false;
        },
    },
    computed:{
        role(){
            return this.$store.state.User.readerInfo.role
        },
        readerId(){
            return this.$store.state.User.readerInfo.readerId
        },
        readerName(){
            return this.$store.state.User.readerInfo.readerName
        },
        readerPhone(){
            return this.$store.state.User.readerInfo.readerPhone
        },
        hold(){
            return this.$store.state.User.readerInfo.hold
        },
        overTimes(){
            return this.$store.state.User.readerInfo.overTimes
        },
        board(){
            // return this.$store.state.Notion.notion.replace(/<script/g, '&lt;script').replace(/<\/script>/g, '&lt;/script&gt;');
            return this.$store.state.Notion.notion
        },
        account(){
            const account = JSON.parse(localStorage.getItem("account"))
            return account;
        },
    },
    components:{
        Search,
    },
    mounted(){
        initReader(qs.stringify({Sno:JSON.parse(localStorage.getItem("account")).readerId})).then(res=>{
            this.$store.dispatch('setReaderInfo',res)
            console.log(res)
        },err=>{
            console.log(err.message);
        });
        this.$store.dispatch("get_notion");
    }
}
</script>

<template>
<div v-show="(account.logIn==true)">
    <el-descriptions title="用户信息">
        <el-descriptions-item label="学号/职工号：">{{readerId}}</el-descriptions-item>
        <el-descriptions-item label="用户名：">{{readerName}}</el-descriptions-item>
        <el-descriptions-item label="手机号：">{{readerPhone}}</el-descriptions-item>
        <el-descriptions-item label="备注：" v-if="(role==1)">
            <el-tag size="small" type="success">管理员</el-tag>
        </el-descriptions-item>
        <el-descriptions-item label="备注：" v-else-if="(role==0)">
            <el-tag size="small">用户</el-tag>
        </el-descriptions-item>
        <el-descriptions-item label="备注：" v-else>
            <el-tag size="small" type="danger">黑名单</el-tag>
        </el-descriptions-item>
        <el-descriptions-item label="当前借阅数：" v-if="(role!=1)">{{hold}}</el-descriptions-item>
        <el-descriptions-item label="逾期次数：" v-if="(role!=1)">{{overTimes}}</el-descriptions-item>
    </el-descriptions>
    <div>
        <h2>
            通知
        </h2>
        <p>
            <!-- <p v-html="board"></p > -->
            {{ board }}
        </p>
        <el-row :gutter="20" v-if="(role==1)">
            <el-col :span="18">
                <el-input v-model="newNotion" @keyup.enter.native="changetNotion" :placeholder="changeWay"/>
            </el-col>
            <el-col :span="6">
                <el-button type="primary" @click="changetNotion" >
                    <el-icon><Search /></el-icon>&nbsp更改
                </el-button>
            </el-col>
        </el-row>
    </div>
</div>
</template>

<style lang="less" scoped>

</style>