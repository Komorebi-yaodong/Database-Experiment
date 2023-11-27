<script>
import {addBlackList,removeBlackList,delPerson} from '../../../api/index.js'
import qs from "qs"
export default{
    name:"AdminPerson",
    data(){
        return{
        }
    },
    methods:{
        blackListButton(row){
            if(row.ROLE==2){
                return "移出"
            }
            else if(row.ROLE==0){
                return "移入"
            }
            else{
                return "无法操作"
            }
        },
        editBlaskList(row){
            if(row.ROLE==2){
                let infoObj = {Sno:row.Sno}
                removeBlackList(qs.stringify(infoObj)).then(res=>{
                    if(res.status == 200){
                        this.$message({
                            showClose: true,
                            message: res.message,
                            type: "success",
                        });
                    }
                this.$store.dispatch('initReadersList');
                })
            }
            else if(row.ROLE==0){
                let infoObj = {Sno:row.Sno}
                addBlackList(qs.stringify(infoObj)).then(res=>{
                    if(res.status == 200){
                        this.$message({
                            showClose: true,
                            message: res.message,
                            type: "success",
                        });
                    }
                this.$store.dispatch('initReadersList');
                })
            }
            else{
                this.$message({
                    showClose: true,
                    message: "无法操作",
                    type: "error",
                });
            }
        },
        // 删除人员
        delperson(row){
            let infoObj = {Sno:row.Sno}
            delPerson(qs.stringify(infoObj)).then(res=>{
                if(res.status == 200){
                    this.$message({
                        showClose: true,
                        message: "删除人员成功！",
                        type: "success",
                    });
                }
                this.$store.dispatch('initReadersList')
            })
        }
    },
    computed:{
        readerList(){
            return this.$store.state.User.readerList
        },
        account(){
            const account = JSON.parse(localStorage.getItem("account"))
            return account;
        },
    },
    mounted(){
        if(JSON.parse(localStorage.getItem("account")).role == 1){
            this.$store.dispatch('initReadersList')
        }
    }
}
</script>

<template>
<div v-show="(account.logIn==true && account.role ==1)">
    <el-table :data="readerList" style="width:100%" height="450">
        <el-table-column sortable prop="Sno" label="学号"></el-table-column>
        <el-table-column sortable prop="name" label="姓名"></el-table-column>
        <el-table-column sortable prop="telephone" label="电话"></el-table-column>
        <el-table-column sortable prop="hold" label="当前借阅数"></el-table-column>
        <el-table-column sortable prop="overtime" label="逾期次数"></el-table-column>
        <el-table-column sortable prop="bl" label="用户状态"></el-table-column>
        <el-table-column label="黑名单更改">
            <template #default="scope">
                <el-button size="small" type="warning" slot="reference" @click="editBlaskList(scope.row)">{{blackListButton(scope.row)}}</el-button>
            </template>
        </el-table-column>
        <el-table-column label="删除">
            <template #default="scope">
                <el-popconfirm title="确认删除该用户？" @confirm="delperson(scope.row)">
                    <template #reference>
                        <el-button size="small" type="danger" slot="reference">删除人员</el-button>
                    </template>
                </el-popconfirm>
            </template>
        </el-table-column>
    </el-table>
</div>
</template>