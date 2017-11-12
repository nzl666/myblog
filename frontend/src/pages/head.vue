<template>
    <div id = "head">
      <el-menu
        :default-active="activeIndex"
        class="el-menu-demo"
        mode="horizontal"
        @select="handleSelect"
        background-color="#545c64"
        text-color="#fff"
        active-text-color="#ffd04b">
        <el-menu-item class="mar-lef" index="1">首页</el-menu-item>
        <el-menu-item class="mar-lef" index="2">xxx</el-menu-item>
        <el-menu-item class="mar-lef" index="3">留言</el-menu-item>
        <div class="login-regist">
          <div v-if="false">
          <a href="#">登录</a>
            <span style="margin-left: 20px;"><a href="#">注册</a></span>
           </div>
          <div v-if="true">
            <img class="head-img" src="http://avatar.csdn.net/E/4/A/1_qq_38082304.jpg"/>
            <span style="float: right;margin-top: 10px;margin-left: 10px;"> <a href="#">苏雨丶</a></span>
          </div>
        </div>
      </el-menu>
    </div>
</template>

<script type="text/ecmascript-6">
  export default {
    data () {
      return {
        islogin: false
      }
    },
    methods: {
      handleSelect (key, keyPath) {
        console.log(key, keyPath)
      }
    }
  }
</script>
<style>
  .login-regist{
    float: right;
    margin-top: 18px;
    height: 100%;
    margin-right:7%;
  }
  a{
    text-decoration: none;
  }
  .head-img{
   width: 35px;
    height: 35px;
    border-radius: 17px;
  }
  #head {
    margin-top: -10px;
  }
  mybtn {
    width: 6%;
    height: 40px;
    float: left;
  }
  .el-menu--horizontal .el-menu-item {
    margin-left: 10%;
  }
  body{
    margin: 0px;
  }
  .el-input__inner {
    height: 30px;
  }
  .el-input__icon {
    margin-top: -5px;
  }
  .el-menu--horizontal .el-menu-item {
    height: 50px;
  }
</style>
