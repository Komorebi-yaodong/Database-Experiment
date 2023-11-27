<script>
import AdminBanner from '../components/AdminBanner/AdminBanner.vue'
import ReaderBanner from '../components/ReaderBanner/ReaderBanner.vue'
import qs from "qs"
export default {
    name: 'Home',
    data(){
        return{
        }
    },
    components:{
        AdminBanner,
        ReaderBanner,
    },
    methods:{
    },
    computed:{
        account(){
            const account = JSON.parse(localStorage.getItem("account"))
            return account;
        },
    }
}

</script>

<template>
    <div class="clearfix">
        <header>
            <img src="../images/library.jpg" alt="">
        </header>
        <el-row :gutter="20">
            <el-col :span="6" class="banner">
                    <div>
                        <AdminBanner v-if="(account.role==1)"/>
                        <ReaderBanner v-else/>
                    </div>
            </el-col>
            <el-col :span="14">  
                <div class="tablemain">
                    <router-view />
                </div>
            </el-col>
        </el-row>
    </div>
</template>


<style lang="less" scoped>
header{
    text-align: center;
    color: rgb(16, 148, 93);
    font-family: "Helvetica Neue",Helvetica,"PingFang SC","Hiragino Sans GB","Microsoft YaHei","微软雅黑",Arial,sans-serif;
    img{
        height: 120px;
    }
}
.tablemain{
     box-shadow: 0 2px 12px 0 rgba(0, 0, 0, 0.1);
     border: 1px solid #eee;
     border-radius: 1px 1px 1px ;
     padding: 20px;
     min-height:450px
}
.banner{
    float: left;
    box-sizing: border-box;
    width: 25%;
}
</style>