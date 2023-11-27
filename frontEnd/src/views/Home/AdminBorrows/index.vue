<script>
import {searchBorrow} from '../../../api/index.js'
import qs from "qs"
export default{
    name:"AdminBorrows",
    data(){
        return{
            loading:false,
            loadingtext: "查询中...",
            info: "",
            searchedMessage:[],
            flag: 0,
        }
    },
    methods:{
        searchInfo(e){
            this.loading = true;
            searchBorrow(qs.stringify({info:this.info})).then(
                (res)=>{
                    this.loading = false;
                    e.target.blur();
                    this.searchedMessage = res.data;
                    this.flag = 1;
                    if(res.status==0){
                        this.$message({
                        showClose: true,
                        message: "查询结果为空！",
                        type: "error",
                        });
                    }
                },
                (err)=>{
                    this,loading = false;
                    console.log(err.message);
                }
            )
        },
        clear() {
            this.flag = 0;
            this.searchedMessage = [];
        },
    },
    computed:{
        borrowList(){
            return this.$store.state.Borrows.allBorrows
        },
        account(){
            const account = JSON.parse(localStorage.getItem("account"))
            return account;
        },
    },
    mounted(){
        this.$store.dispatch('initAllBorrows')
    }
}
</script>

<template>
<div v-show="(account.logIn==true && account.role ==1)">
    <div
        v-loading.fullscreen.lock="loading"
        :element-loading-text="loadingtext"
        element-loading-spinner="el-icon-loading"
        element-loading-background="rgba(0,0,0,0.8)">
        <el-input
            placeholder="请输入您要查找的用户学号/职工号/图书名称"
            prefix-icon="el-icon-search"
            @keyup.enter.native="searchInfo"
            @blur="clear"
            v-model="info">
        </el-input>
        <el-table :data="flag==0?borrowList:searchedMessage" style="width:100%" height="450">
            <!-- <el-table-column sortable label="借阅序号" prop="id"  > </el-table-column> -->
            <el-table-column sortable label="学号/职工号" prop="Sno"  > </el-table-column>
            <el-table-column sortable label="姓名" prop="name"> </el-table-column>
            <el-table-column sortable label="书名" prop="book_name"> </el-table-column>
            <el-table-column sortable label="作者" prop="author_name"> </el-table-column>
            <el-table-column sortable label="ISBN" prop="ISBN"> </el-table-column>
            <el-table-column sortable label="借阅时间" prop="borrow_date"> </el-table-column>
            <el-table-column sortable label="应还时间" prop="date_time"> </el-table-column>
            <el-table-column sortable label="实际归还时间" prop="return_date"> </el-table-column>
            <el-table-column sortable label="状态" prop="status"> </el-table-column>
        </el-table>
    </div>
</div>
</template>