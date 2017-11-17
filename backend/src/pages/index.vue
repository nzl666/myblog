<template>
  <div id="" >
    <el-container>
      <el-aside width="200px">
        <div style="background-color:#545c64 ">
          <el-menu
            default-active="2"
            class="el-menu-vertical-demo"
            @open="handleOpen"
            @close="handleClose"
            background-color="#545c64"
            text-color="#fff"
            active-text-color="#ffd04b">
            <el-submenu index="1">
              <template slot="title">
                <i class="el-icon-location"></i>
                <span>导航一</span>
              </template>
              <el-menu-item-group>
                <template slot="title">分组一</template>
                <el-menu-item index="1-1">选项1</el-menu-item>
                <el-menu-item index="1-2">选项2</el-menu-item>
              </el-menu-item-group>
              <el-menu-item-group title="分组2">
                <el-menu-item index="1-3">选项3</el-menu-item>
              </el-menu-item-group>
              <el-submenu index="1-4">
                <template slot="title">选项4</template>
                <el-menu-item index="1-4-1">选项1</el-menu-item>
              </el-submenu>
            </el-submenu>
            <el-menu-item index="2">
              <i class="el-icon-menu"></i>
              <span slot="title">导航二</span>
            </el-menu-item>
            <el-menu-item index="3">
              <i class="el-icon-setting"></i>
              <span slot="title">导航三</span>
            </el-menu-item>
          </el-menu>
        </div>
      </el-aside>
      <el-main>
        <div >
          <div class="public-box" style="padding-right: 5%;padding-left: 5%; padding-top: 30px; padding-bottom: 30px;">
            <div style="text-align: center;margin-bottom: 10px;font-size: 20px;font-weight: bold;color: #409eff">
            <span>文章发布</span>
            </div>
            <div style="height: 16px;float: left;width: 6px;background-color: orange;margin-top: 4px; margin-right: 6px;"></div>
            <label style="color: #5a5e66;">标题</label>
            <hr/>
            <el-input v-model="input" placeholder="请输入文章标题" max="80%"></el-input>
            <div style="margin-top: 10px;">
              <div style="height: 16px;float: left;width: 6px;background-color: orange;margin-top: 4px; margin-right: 6px;"></div>
              <label style="color: #5a5e66;">摘要</label>
            </div>
            <hr/>
            <el-input
              type="textarea"
              :autosize="{ minRows: 3, maxRows: 3}"
              placeholder="请输入内容"
              v-model="textarea3">
            </el-input>
            <div style="margin-top: 10px;">
              <div style="height: 16px;float: left;width: 6px;background-color: orange;margin-top: 4px; margin-right: 6px;"></div>
              <label style="color: #5a5e66;">正文</label>
            </div>
            <hr/>
            <div class="write-mark">
              <el-input
                type="textarea"
                :autosize="{ minRows: 14, maxRows: 14}"
                placeholder="请输入正文"
                v-model="textarea3">
              </el-input>
            </div>
            <div style="margin-top: 10px;margin-bottom: 10px;background-color: #878d99">
              实时更新
            </div>
            <div class="write-mark" style="overflow:scroll; ">
               <h1>标题</h1>
              <h1>标题</h1>
              <h1>标题</h1>
              <h1>标题</h1>
            </div>
            <div style="margin-top: 10px;">
              <div style="height: 16px;float: left;width: 6px;background-color: orange;margin-top: 4px; margin-right: 6px;"></div>
              <label  style="color: #5a5e66;">文章分类</label>
            </div>
            <hr/>
            <el-input v-model="input" placeholder="请选择分类" max="80%"></el-input>
            <el-checkbox-group v-model="checkList">
              <el-checkbox label="Java"></el-checkbox>
              <el-checkbox label="vue"></el-checkbox>
              <el-checkbox label="git"></el-checkbox>
            </el-checkbox-group>
            <div style="margin: 20px 0;text-align: center">
              <el-button type="primary">立即发布</el-button>
              <el-button type="warning">保存草稿</el-button>
            </div>

          </div>
        </div>
      </el-main>
    </el-container>
  </div>
</template>
<script>
  import vleft from '@/pages/left'
  export default {
    data() {
      return {
        checkList: ['复选框 A']
      };
    },
    methods: {
    },
    components: { vleft }
  }
</script>
<style>
  .public-box{
    background-color: cornsilk;
  }
  .el-main{
    margin: 5px;
    padding: 2px;
  }
  .write-mark {
    width: 100%;
    border: 2px solid white;
    height: 300px;
  }
</style>
