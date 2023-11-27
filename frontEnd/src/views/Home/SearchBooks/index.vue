<script>
import { Search,Setting } from '@element-plus/icons-vue'
import {addBorrow,searchBook,changeBookInfo,delBook,addBooks} from '../../../api/index.js'
import qs from "qs"
export default{
    name:"SearchBooks",
    data(){
        return{
            loading:false,
            info:"",
            flag:0,
            name:"",
            searchWay:"书名/作者名/ISBN",
            searchedBooks:[],  // 查找到的图书
            drawer:false,
            newbook:{
                ISBN:"",
                book_name:"",
                total:0,
                author_name:"",
                classification:"",
            },
        }
        
    },
    methods:{
        bookBorrow(row){  // 图书借阅
            this.loading = true;
            let Sno = this.$store.state.User.readerInfo.readerId;
            let ISBN = row.ISBN;
            let borrowObj = {Sno,ISBN};
            addBorrow(qs.stringify(borrowObj)).then(
                (res)=>{
                    this.loading = false;
                    if(res.status==0){
                        this.$message({
                            showClose:true,
                            message:res.msg,
                            type:"error",
                        });
                    }else if(res.status == 200){
                        this.loading = false;
                        this.$message({
                        showClose: true,
                        message: res.msg,
                        type: "success",
                        });
                    }
                    this.$store.dispatch("initMyBorrows",{Sno:this.$store.state.User.readerInfo.readerId});
                    this.$store.dispatch("initBooksLists");
                }
            )
            this.loading = false;
        },
        searchBooks(e){  // 查询图书
            this.loading = true;
            searchBook(qs.stringify({info:this.info})).then(
                (res)=>{
                    this.loading = false;
                    e.target.blur();
                    this.flag = 1;
                    this.searchedBooks = res.data;
                    // console.log(res);
                    if(res.status == 0){
                        this.$message({
                        showClose: true,
                        message: "未找到相关书籍！",
                        type: "error",
                        });
                    }
                },
                (err)=>{
                    this.loading = false;
                    console.log(err.message);
                }
            )
        },
        clear() {
            this.flag = 0;
            this.searchedBooks = []  // 查找到的图书
        },
        cancelForm(){
            this.drawer=false;
        },
        addBook(){
            let bookInfo = {
                ISBN:this.newbook.ISBN,
                book_name:this.newbook.book_name,
                total:this.newbook.total,
                author_name:this.newbook.author_name,
                classification:this.newbook.classification,
            };
            console.log(bookInfo);
            addBooks(qs.stringify(bookInfo)).then(
                (res)=>{
                    if(res.status==200){
                        this.$message({
                            showClose:true,
                            message:res.msg,
                            type:"success",
                        });
                    }else{
                        this.$message({
                            showClose:true,
                            message:"请检查分类是否正确",
                            type:"success",
                        });
                    }
                    
                    this.$store.dispatch("initBooksLists");
                },
                (err)=>{
                        console.log(err.message);
                    }
            )
            this.drawer=false;
        },
        changeBookName(row){  // 更改图书名
            var ISBN = row.ISBN;
            var status = 1;
            this.$prompt("请输入书名","提示",{
                confirmButtonText: "确定",
                cancelButtonText: "取消",
                inputValue: row.book_name,
            }).then(({value})=>{
                this.$message({
                    type:"success",
                    message:"你修改的书名是: " + value,
                });
                var infoObj = {ISBN,book_name:value,status};
                changeBookInfo(qs.stringify(infoObj)).then(
                    (res)=>{
                        console.log(res.message);
                        this.$store.dispatch("initBooksLists");
                        this.$store.dispatch("initAllBorrows");
                    },
                    (err)=>{
                        console.log(err.message);
                    }
                );
            })
            .catch(()=>{
                this.$message({
                    type: "info",
                    message: "取消输入",
                });
            });
        },
        changeBookAuthor(row){  // 更改图书作者
            var ISBN = row.ISBN;
            var status = 2;
            this.$prompt("请输入作者名","提示",{
                confirmButtonText: "确定",
                cancelButtonText: "取消",
                inputValue: row.author_name,
            }).then(({value})=>{
                this.$message({
                    type:"success",
                    message:"你修改的作者名是: " + value,
                });
                var infoObj = {ISBN,author_name:value,status};
                changeBookInfo(qs.stringify(infoObj)).then(
                    (res)=>{
                        console.log(res.message);
                        this.$store.dispatch("initBooksLists");
                        this.$store.dispatch("initAllBorrows");
                    },
                    (err)=>{
                        console.log(err.message);
                    }
                );
            })
            .catch(()=>{
                this.$message({
                    type: "info",
                    message: "取消输入",
                });
            });
        },
        changeBookClass(row){  // 更改图书类型
            var ISBN = row.ISBN;
            var status = 3;
            this.$prompt("请输入图书类型","提示",{
                confirmButtonText: "确定",
                cancelButtonText: "取消",
                inputValue: row.classification,
            }).then(({value})=>{
                this.$message({
                    type:"success",
                    message:"你修改的图书类型是: " + value,
                });
                var infoObj = {ISBN,classification:value,status};
                changeBookInfo(qs.stringify(infoObj)).then(
                    (res)=>{
                        console.log(res.message);
                        this.$store.dispatch("initBooksLists");
                        this.$store.dispatch("initAllBorrows");
                    },
                    (err)=>{
                        console.log(err.message);
                    }
                );
            })
            .catch(()=>{
                this.$message({
                    type: "info",
                    message: "取消输入",
                });
            });
        },
        changeBookAmount(row){  // 更改图书馆藏数
            var ISBN = row.ISBN;
            var status = 4;
            this.$prompt("请输入图书馆藏数增减量（正整数/负整数）","提示",{
                confirmButtonText: "确定",
                cancelButtonText: "取消",
                inputValue: 0,
            }).then(({value})=>{
                this.$message({
                    type:"success",
                    message:"成功修改"
                });
                var infoObj = {ISBN,difference:parseInt(value),status};
                changeBookInfo(qs.stringify(infoObj)).then(
                    (res)=>{
                        this.$store.dispatch("initBooksLists");
                        this.$store.dispatch("initAllBorrows");
                    },
                    (err)=>{
                        console.log(err.message);
                    }
                );
            })
            .catch(()=>{
                this.$message({
                    type: "info",
                    message: "取消输入",
                });
            });
        },
        delbook(row){  // 删除图书
            let ISBN = row.ISBN;
            delBook(qs.stringify({ISBN})).then(res=>{
                if(res.status == 200){
                    this.$message({
                        type: "success",
                        message: res.msg,
                    });
                }
                this.$store.dispatch("initBooksLists");
                this.$store.dispatch("initAllBorrows");
            },err=>{
                console.log(err.message);
            })
        }

    },
    computed:{
        account(){
            const account = JSON.parse(localStorage.getItem("account"))
            return account;
        },
    },
    components:{
        Search,
        Setting,
    },
    mounted(){
        this.$store.dispatch('initBooksLists');
    }
};
</script>

<template>
<div v-show="(account.logIn==true)">
    <el-row :gutter="20">
    <el-col :span="18">
        <el-input v-model="info" @keyup.enter.native="searchBooks" @blur="clear" :placeholder="searchWay"/>
    </el-col>
    <el-col :span="6">
        <el-button type="primary" @click="searchBooks" >
            <el-icon><Search /></el-icon>&nbsp搜索
        </el-button>
        <!-- 添加书籍 -->
        <el-button type="success" slot="reference" @click="drawer=true" v-if="(account.role==1)" >添加新书</el-button>
        <el-drawer v-model="drawer" title="添加新书信息" :with-header="true">
            <el-form :model="newbook">
                <el-form-item label="书名" label-width="80px">
                    <el-input v-model="newbook.book_name" autocomplete="off"/>
                </el-form-item>
                <el-form-item label="作者名" label-width="80px">
                    <el-input v-model="newbook.author_name" autocomplete="off"/>
                </el-form-item>
                <el-form-item label="ISBN" label-width="80px">
                    <el-input v-model="newbook.ISBN" autocomplete="off"/>
                </el-form-item>
                <el-form-item label="总数" label-width="80px">
                    <el-input v-model="newbook.total" autocomplete="off"/>
                </el-form-item>
                <el-form-item label="分类" label-width="80px">
                    <el-input v-model="newbook.classification" autocomplete="off"/>
                </el-form-item>
                <el-button @click="cancelForm">取消</el-button>
                <el-button @click="addBook">确定</el-button>
            </el-form>
        </el-drawer>
    </el-col>
    </el-row>

    <el-table
        :data="flag==0 ? this.$store.state.Books.booksList :searchedBooks"
        height="450"
        style="width:100%"
        v-loading.fullscreen = "loading"
        element-loading-text="正在处理..."
        element-loading-spinner="el-icon-loading"
        element-loading-background="rgba(0,0,0,0.8)">
        <el-table-column type="expand">
            <template #default="scope" >
                <el-form label-position="left" class="demo-table-expand">
                    <el-form-item label="图书名称：">
                        <span>{{scope.row.book_name}}</span>
                        &nbsp;
                        <el-button v-show="(account.role==1)" @click="changeBookName(scope.row)" type="primary" plain style="float:right" size="small">
                            <el-icon><Setting /></el-icon>&nbsp修改
                        </el-button>
                    </el-form-item>
                    <el-form-item label="图书作者：">
                        <span>{{scope.row.author_name}}</span>
                        &nbsp;
                        <el-button v-show="(account.role==1)" @click="changeBookAuthor(scope.row)" type="primary" plain style="float:right" size="small">
                            <el-icon><Setting /></el-icon>&nbsp修改
                        </el-button>
                    </el-form-item>
                    <el-form-item label="ISBN：">
                        <span>{{scope.row.ISBN}}</span>
                    </el-form-item>
                    <el-form-item label="分类：">
                        <span>{{scope.row.classification}}</span>
                        &nbsp;
                        <el-button v-show="(account.role==1)" @click="changeBookClass(scope.row)" type="primary" plain style="float:right" size="small">
                            <el-icon><Setting /></el-icon>&nbsp修改
                        </el-button>
                    </el-form-item>
                    <el-form-item label="书籍位置：">
                        <span>{{scope.row.location}}</span>
                    </el-form-item>
                    <el-form-item label="当前可借阅：">
                        <span>{{scope.row.current}}</span>
                    </el-form-item>
                    <el-form-item label="馆藏数：">
                        <span>{{scope.row.total}}</span>
                        &nbsp;
                        <el-button v-show="(account.role==1)" @click="changeBookAmount(scope.row)" type="primary" plain style="float:right" size="small">
                            <el-icon><Setting /></el-icon>&nbsp修改
                        </el-button>
                    </el-form-item>
                    <el-popconfirm title="确认删除该书籍吗？" v-if="(account.role==1)" style="float:right" @confirm="delbook(scope.row)">
                        <template #reference>
                            <el-button  size="small" type="danger" slot="reference" >删除书籍</el-button>
                        </template>
                    </el-popconfirm> 
                    <!-- <el-form-item label="借阅次数：">
                        <span>{{}}</span>
                        
                    </el-form-item> -->
                </el-form>
            </template>
        </el-table-column>
        <el-table-column fit="true" label="图书名称" prop="book_name"></el-table-column>
        <el-table-column fit="true" label="图书作者" prop="author_name"></el-table-column>
        <el-table-column fit="true" label="ISBN" prop="ISBN"></el-table-column>
        <el-table-column fit="true" label="分类" prop="classification"></el-table-column>
        <!-- <el-table-column label="书籍位置" prop="location"></el-table-column> -->
        <el-table-column fit="true" label="当前可借阅" prop="current"></el-table-column>
        <!-- <el-table-column label="馆藏数" prop="total"></el-table-column> -->
        <el-table-column fit="true" label="操作" prop="bookName" v-if="(account.role!=1)">
            <template #default="scope">
                <el-button size="small" type="primary" plain @click="bookBorrow(scope.row)" v-if="(this.$store.state.User.readerInfo.role==0)">借阅</el-button>
            </template>
        </el-table-column>
    </el-table>
</div>
</template>

<style lang="less" scoped>
.demo-table-expand {
  font-size: 0;
}
.demo-table-expand label {
  width: 90px;
  color: #99a9bf;
}
.demo-table-expand .el-form-item {
  margin-right: 0;
  margin-bottom: 0;
  width: 50%;
}
</style>