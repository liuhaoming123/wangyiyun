<template>
  <div class="page-tabbar">
    <div class="page-wrap">
      <!-- 父组件 -->
      <!-- 头部标题 -->
      <!-- leftTitle里面写内容 -->
      <Head leftTitletj="推荐" leftTitlesp="视频  " leftTitleds="电台·听书" :rightFirstImg="require('../../assets/sousuo.png')" :rightSecondImg="require('../../assets/soula.png')"></Head>
      <!-- ################################ -->
      <!-- 直播内容 -->
      <Middle content1="全部" content2="歌手" content3="颜值" content4="新秀" content5="特色" :imgurl="require(`../../assets/1.png`)" title="贵州" subtitle="安小说"></Middle>

      <!-- ############################### -->
      <!-- 底部导航条 -->
      <mt-tabbar v-model="active" fixed>
        <!-- 发现  find-->
        <mt-tab-item id="find" @click.native="changeState(0)">
          <Crural :focused="list[0].isSelect" :selectedImage="require('../../assets/sousuob.png')" :normalImage="require('../../assets/sousuo.png')"></Crural>
          发现
        </mt-tab-item>
        <!-- 直播  Sinatv-->
        <mt-tab-item id="Sinatv" @click.native="changeState(1)">
          <Crural :focused="list[1].isSelect" :selectedImage="require('../../assets/sousuob.png')" :normalImage="require('../../assets/sousuo.png')"></Crural>
          直播
        </mt-tab-item>
        <!-- 播放音乐  music-->
        <mt-tab-item id="music" @click.native="changeState(2)">
          <Crural :focused="list[2].isSelect" :selectedImage="require('../../assets/sousuob.png')" :normalImage="require('../../assets/sousuo.png')"></Crural>
          <!--  -->
        </mt-tab-item>
        <!-- K歌 -->
        <mt-tab-item id="ksong" @click.native="changeState(3)">
          <Crural :focused="list[3].isSelect" :selectedImage="require('../../assets/sousuob.png')" :normalImage="require('../../assets/sousuo.png')"></Crural>
          K歌
        </mt-tab-item>
        <!-- 我的 -->
        <mt-tab-item id="me" @click.native="changeState(4)">
          <Crural :focused="list[4].isSelect" :selectedImage="require('../../assets/sousuob.png')" :normalImage="require('../../assets/sousuo.png')"></Crural>
          我的
        </mt-tab-item>
      </mt-tabbar>
    </div>
  </div>
</template>
<script>
// 引入子组件
//头部标题
import Head from "./common/Head.vue"
//底部导航按钮
import Crural from "./common/Crural.vue"
//中间直播内容
import Middle from "./common/Middle.vue"

export default {
  data () {
    return {
      active:"message",//默认显示消息列表
      list:[
        {isSelect:false},   //第一个按钮状态 0
        {isSelect:true},    //第二个按钮状态 1
        {isSelect:false},   //第三个按钮状态 2
        {isSelect:false},   //第四个按钮状态 3
        {isSelect:false}    //第五个按钮状态 4
      ]
    }
  },
  methods:{
    changeState(idx){
      // 功能:完成点击按钮切换图片任务 当前按钮是true 其他按钮false
      // 参数idx按钮下标 0 1 2 3
      // console.log(idx);
      // 1.创建变量size 表示数组长度
      var size = this.list.length;
      // 2.创建循环遍历数据list每个元素
      for(var i=0;i<size;i++){
      // 3.判断如果参数下载idx与当前按钮下标相同
      if(i==idx){
        // 4.当前元素选中状态true
        this.list[i].isSelect=true;
      }else{
        // 5.其他元素默认状态false
        this.list[i].isSelect=false;
      }
      }
    }
  },
  //注册子组件
  components: {
    Head,
    Crural,
    Middle,
  }
}
</script>
<style scoped>
/*1.最外层父元素 */
.page-tabbar{
  overflow: hidden/*溢出隐藏 */;
}
/* 2.内层元素 */
.page-wrap{
  overflow: auto;/* 数据多出现滚动条 */
  padding-bottom:60px;/*底部导航栏空间 */ 
}
/* 3.覆盖mint-ui组件原有的样式-tabbar按钮中文字选中样式 */
.mint-tabbar > .mint-tab-item.is-selected{
  background-color: transparent;
  color: #44bef5;
}
/* 4.覆盖mint-ui组件原有的样式-tabbar按钮中文字默认样式 */
.mint-tabbar > .mint-tab-item{
  color: #999;
}
</style>