<template>
    <div>
    <vheader :activeIndex="1"></vheader>
    <div class="center">
      <!-- 页面左侧模块-->
      <el-container>
        <el-aside width="260px">
          <div style="padding-bottom: 20px;">
            <el-tag type="success">
              <span style="font-weight:bold;">个人资料</span>
            </el-tag>
          </div>
          <div class="my-info">
            <el-tag id="headimg">
              <img id="myimg" src="http://avatar.csdn.net/E/4/A/1_qq_38082304.jpg"/>
            </el-tag>
            <div style="margin-top: 10px;">
                <span style="text-align: center;">苏雨丶</span>
            </div>
          </div>
          <div class="my-info" style="text-align: left">
            <div class="art-data">
              <label>文章：</label><span>66</span>
            </div>
            <div class="art-data">
               <label>访问：</label><span>886</span>
            </div>
            <div class="art-data">
               <label>评论：</label><span>66</span>
            </div>
          </div>
          <div class="center-spance"></div>
          <div style="padding-bottom: 20px;">
            <el-tag type="success">
              <span style="font-weight:bold;">文章搜索</span>
            </el-tag>
          </div>
          <div id="select-art">
              <el-input placeholder="请输入内容" v-model="input5" class="input-with-select">
                <el-button slot="append" icon="el-icon-search"></el-button>
              </el-input>
          </div>
          <div class="center-spance"></div>
          <div>
            <el-tag type="success">
              <span style="font-weight:bold;">文章分类</span>
            </el-tag>
          </div>
          <div class="my-info" style="text-align: left;border: none">
            <el-tag class="tip-kind"
              v-for="tag in tags"
              :key="tag.name"
              :type="tag.type"
              :disable-transitions="true">
              {{tag.name}}
            </el-tag>
          </div>
          <div class="center-spance"></div>
          <div>
            <el-tag type="success">
              <span style="font-weight:bold;">阅读排行</span>
            </el-tag>
          </div>
          <div class="my-info" style="text-align: left;border: none;padding-right: 0px;">
            <div class="art-data">
              <a href="#">H5 Canvas移动端的自定已化</a><span class="top-read">(<span>26666</span>)</span>
            </div>
            <div class="art-data">
              <a href="#">H5 Canvas移动端的自定义花</a><span class="top-read">(<span>86</span>)</span>
            </div>
            <div class="art-data">
              <a href="#">H5 Canvas移动端的自定义花</a><span class="top-read">(<span>66</span>)</span>
            </div>
          </div>
          <div class="center-spance" style="background-color: #f4f4f4;height: 200px;"></div>
        </el-aside>
        <!-- 模块之间的间隔-->
        <div style="background-color: #f4f4f4;">
             <el-aside width="20px"></el-aside>
        </div>
        <!-- 页面中间模块-->
        <el-main>
           <div class="top-main">

           </div>
          <div class="blog-art-box" v-for="b in blogs">
            <div class="blog-title">
              <div class="tip-blog">{{b.status}}</div>
              <router-link :to="{ name: 'blog' }">{{b.title}}</router-link>
            </div>
            <div class="blog-introduction"><span class="intro-font">{{b.tip}}</span></div>
            <div class="blog-detail">
               <span class="blog-data-art">
                 <i class="el-icon-edit-outline" style="font-size: 15px"></i>
                 <label>评论</label><span>(</span><span>{{b.comucount}}</span><span>)</span>
              </span>
              <span class="blog-data-art">
                <i class="el-icon-view" style="font-size: 15px;"></i>
                 <label>阅读</label><span>(</span><span>{{b.readcount}}</span><span>)</span>
              </span>

              <span class="blog-data-art">
                  <i class="el-icon-time" style="font-size: 15px;"></i>
                <span>{{b.pubtime}}</span>
              </span>
            </div>
          </div>
         <!--分页-->
          <div class="block">
            <el-pagination
              layout="prev, pager, next"
              :total="50">
            </el-pagination>
          </div>
        </el-main>
      </el-container>
    </div>
    </div>
</template>

<script type="text/ecmascript-6">
    import vheader from '@/pages/head'
    export default {
      name: 'Test',
      data () {
        return {
          tags: [
            { name: '标签一', type: '' },
            { name: '标签二', type: 'success' },
            { name: '标签三', type: 'info' },
            { name: '标签四', type: 'warning' },
            { name: '标签五', type: 'danger' }
          ],
          blogs: [
            { title: '删除github项目中已经存在的某个文件', status: '新', id: '1', tip: '删除github项目中已经存在的某个文件...', readcount: 666, pubtime: '2017-11-15 10:25 :30', comucount: 99 },
            { title: '删除github项目中已经存在的某个文件', status: '热', id: '2', tip: '删除github项目中已经存在的某个文件...', readcount: 333, pubtime: '2017-11-15 10:25 :30', comucount: 666 },
            { title: '删除github项目中已经存在的某个文件', status: '新', id: '3', tip: '删除github项目中已经存在的某个文件...', readcount: 999, pubtime: '2017-11-15 10:25 :30', comucount: 88 },
            { title: '删除github项目中已经存在的某个文件', status: '热', id: '4', tip: '删除github项目中已经存在的某个文件...', readcount: 888, pubtime: '2017-11-15 10:25 :30', comucount: 77 },
            { title: '删除github项目中已经存在的某个文件', status: '新', id: '5', tip: '删除github项目中已经存在的某个文件...', readcount: 777, pubtime: '2017-11-15 10:25 :30', comucount: 66 }
          ]
        }
      },
      components: { vheader }
    }
</script>

<style>
  h1 {
    color: red;
  }
  .el-aside{
     width: 15%;
  }
  .center {
    margin-left: 15%;
    margin-right:15%;
    margin-top: 20px;
    background-color: #fff;
  }
  .el-tag--success{
    width: 100%;
    border-radius: 0px;
  }
  #headimg {
    width: 100%;
    height: 150px;
    background-color: #fff;
    border: none;
  }
  #myimg {
    width: 150px;
    height: 150px;
    border: none;
  }
  .my-info {
    text-align: center;
    padding-bottom: 10px;
    padding-top: 10px;
    border-bottom: dashed 1px #ccc;
    margin-bottom: 20px;
    margin-left: 20px;
    margin-right: 20px;
  }
  .art-data{
    font-size: 12px;
    padding-bottom: 7px;
    padding-top: 7px;
  }
.top-read{
  float: right;
}
  .center-spance {
    width: 100%;
    height: 15px;
    background-color:#f4f4f4;
  }
  #select-art {
    width: 96%;
    text-align: center;
    padding-left: 2%;
    padding-right: 2%;
    padding-bottom: 20px;
  }
  .top-main {
    width: 96%;
    margin-left: 2%;
    border: 1px solid #eee;
    height: 100px;
  }
  .blog-art-box{
    border: 1px solid #eee;
    width: 96%;
    margin-left: 2%;
    margin-top: 12px;
    height: 12%;
  }
  .blog-title{
    color: #000;
    font-size: 18px;
    margin-left: 20px;
    margin-top: 15px;
  }
  .blog-introduction{
    margin-top: 10px;
    margin-left: 20px;
    font-size: 14px;
    color: #666;
  }
  a{
    text-decoration: none;
    color: red;
  }
  .tip-blog{
    width: 20px;
    height: 20px;
    border-radius: 7px;
    background-color: #67c23a;
    font-size: 12px;
    text-align: center;
    float: left;
    color:white;
    padding-top: 2px;
  }
  .blog-detail{
    width: 100%;
    height: 30px;
    margin-top: 40px;
  }
  .blog-data-art{
    float: right;
    margin-right: 30px;
    font-size: 12px;
  }
  .block{
    margin-top: 30px;
    float: right;
  }
  .tip-kind {
    width: 100%;
    text-align: left;
    margin-top: 5px;
    cursor: pointer;
  }
</style>
