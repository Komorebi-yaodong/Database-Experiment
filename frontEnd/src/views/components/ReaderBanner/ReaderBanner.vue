<template>
    <div class="main">
        <el-radio-group v-model="isCollapse" style="margin-bottom: 20px;">
        <el-radio-button :label="false">展开</el-radio-button>
        <el-radio-button :label="true">收起</el-radio-button>
        </el-radio-group>
        <el-menu default-active="1" class="el-menu-vertical-demo" :collapse="isCollapse" active-text-color="#ffd04b">
            <el-menu-item index="1" @click="$router.push('/Home/Introduce')"> 
                <el-icon><House /></el-icon>
                <span>首页</span>
            </el-menu-item>
            <el-menu-item index="2" @click="$router.push('/Home/Search')">
                <el-icon><Search /></el-icon>
                <span slot="title">查询图书</span>
            </el-menu-item>
            <el-menu-item index="3" @click="$router.push('/Home/MyBorrows')">
                <el-icon><Reading /></el-icon>
                <span slot="title">我的借阅</span>
            </el-menu-item>
            <el-menu-item v-on:click="logout" index="4"  @click="$router.push('/LoginRegister')">
                <el-icon><CloseBold /></el-icon>
                <span slot="title">退出账号</span>
            </el-menu-item>
        </el-menu>
    </div>
</template>

<script>
import {House,CloseBold,Search,Star,Reading,} from "@element-plus/icons-vue";
export default {
    name: "ReaderBanner",
    data() {
        return {
            isCollapse: true
        };
    },
    components:{
        House,
        CloseBold,
        Search,
        Star,
        Reading,
    },
    methods:{
        logout(){
            localStorage.removeItem('account');
        }
    }
};
</script>

<style lang="less" scoped>
.main{
    float: left;
    margin-right: 200px;
}
</style>