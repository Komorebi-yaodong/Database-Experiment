<script>
import {returnBook,addBorrow} from "../../../api/index.js"
import qs from "qs"
export default{
    name:"ReaderBorrow",
    data(){
        return{
            loading:false,
        }
    },
    methods:{
        returnThisBook(row){  // 还书
            let infoObj = {
                id:row.id
            };
            returnBook(qs.stringify(infoObj)).then(
                (res)=>{
                    if(res.status == 200){
                        this.$message({
                        showClose: true,
                        message: res.msg,
                        type: "success",
                        });
                    }else{
                        this.$message({
                        showClose: true,
                        message: res.msg,
                        type: "error",
                        });
                    }
                    this.$store.dispatch("initMyBorrows",{Sno:this.$store.state.User.readerInfo.readerId});
                    this.$store.dispatch("initBooksLists");
                    this.$store.dispatch("initAllBorrows");
                }
            );
        },
        renewBook(row){  // 续借
            let infoObj = {id:row.id};
            let borrowObj = {Sno:this.$store.state.User.readerInfo.readerId,ISBN:row.ISBN};
            returnBook(qs.stringify(infoObj))
            addBorrow(qs.stringify(borrowObj)).then(
                (res)=>{
                    if(res.status==0){
                        this.$message({
                            showClose:true,
                            message:"续借失败",
                            type:"error",
                        });
                    }else if(res.status == 200){
                        this.loading = false;
                        this.$message({
                        showClose: true,
                        message: "成功续借",
                        type: "success",
                        });
                    }
                    this.$store.dispatch("initMyBorrows",{Sno:this.$store.state.User.readerInfo.readerId});
                    this.$store.dispatch("initBooksLists");
                    this.$store.dispatch("initAllBorrows");
                }
            )
        }
    },
    computed:{
        borrows(){
            return this.$store.state.Borrows.myBorrows;
        },
        account(){
            const account = JSON.parse(localStorage.getItem("account"))
            return account;
        },
    },
    mounted() {
        this.$store.dispatch("initMyBorrows", { Sno:JSON.parse(localStorage.getItem("account")).readerId});
  },
}
</script>

<template>
<div v-show="(account.logIn==true)">
    <el-table :data="borrows" style="width:100%" height="450"
    v-loading.fullscreen.lock="loading"
    element-loading-text="正在处理..."
    element-loading-spinner="el-icon-loading"
    element-loading-background="rgba(0, 0, 0, 0.8)">
        <el-table-column type="expand">
            <template #default="scope">
                <el-form label-position="left">
                    <el-form-item label="借书日期：">
                        <span>{{scope.row.borrow_date}}</span>
                    </el-form-item>
                    <el-form-item label="应还日期：">
                        <span>{{scope.row.date_time}}</span>
                    </el-form-item>
                    <el-form-item label="实际归还日期：">
                        <span>{{scope.row.return_date}}</span>
                    </el-form-item>
                    <el-form-item label="图书名称：">
                        <span>{{scope.row.book_name}}</span>
                    </el-form-item>
                    <el-form-item label="图书作者：">
                        <span>{{scope.row.author_name}}</span>
                    </el-form-item>
                    <el-form-item label="图书分类：">
                        <span>{{scope.row.classification}}</span>
                    </el-form-item>
                    <el-form-item label="图书状态：">
                        <span>{{scope.row.status}}</span>
                    </el-form-item>
                </el-form>
            </template>
        </el-table-column>
        <el-table-column prop = "borrow_date" sortable label="借阅日期"> </el-table-column>
        <el-table-column prop = "book_name" sortable label="图书名称"> </el-table-column>
        <el-table-column prop = "author_name" sortable label="图书作者"> </el-table-column>
        <el-table-column prop = "ISBN" sortable label="ISBN"> </el-table-column>
        <!-- <el-table-column prop = "classification" label="分类"> </el-table-column> -->
        <el-table-column label="操作">
            <template #default="scope">
                <el-popconfirm title="确认归还书籍吗?" @confirm="returnThisBook(scope.row)" v-if="scope.row.status != '已还'">
                    <template #reference>
                        <el-button size="small" type="primary" plain style="margin-right:10px">还书</el-button>
                    </template>
                </el-popconfirm>
                <el-popconfirm title="确认续借该书籍吗?" @confirm="renewBook(scope.row)" v-if="scope.row.status != '已还'">
                    <template #reference>
                        <el-button size="small" type="success" :plain="scope.row.status=='未还'" :disabled="scope.row.status=='续借'" style="margin-right:10px">续借</el-button>
                    </template>
                </el-popconfirm>
                <el-button size="small" disabled v-if="scope.row.status == '已还'">已还</el-button>
            </template>
        </el-table-column>
    </el-table>
</div>
</template>