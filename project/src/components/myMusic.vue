<template>
   <div class="page-tabbar">
     <div class="page-wrap">
       <!-- 导航栏 -->
         <!-- 面板 -->
      <mt-tab-container v-model="active">        
         <!-- #面板父元素 -->
          <mt-tab-container-item  id="message">    
            <!-- #面板一 -->
             面板一:(发现)
          </mt-tab-container-item>
          <mt-tab-container-item   id="contact">   
             <!-- #面板二 -->
             面板二:(直播)
          </mt-tab-container-item>
          <mt-tab-container-item   id="find">    
            <!-- #面板三 -->
             面板三:(k歌)
          </mt-tab-container-item>
           <mt-tab-container-item   id="me">    
            <!-- #面板四 -->
           <titlebar class="ti1"></titlebar>
          </mt-tab-container-item>
         </mt-tab-container>
         <!-- 底部导航栏 -->
         <mt-tabbar v-model="active" fixed class="c01">
               <!--按钮一:微信 完成三个按钮-->
               <mt-tab-item   id="message" @click.native="changeState(0)">
                 <tabbaricon
                   :focused="list[0].isSelect"
                   :selectedImage="require('../assets/yl2.png')"
                   :normalImage="require('../assets/yl1.png')"
                 ></tabbaricon>  
                 发现
               </mt-tab-item>
               <!--按钮二:通讯录-->
               <mt-tab-item  id="contact" @click.native="changeState(1)">
                  <tabbaricon
                    :focused="list[1].isSelect"
                    :selectedImage="require('../assets/zb2.png')"
                    :normalImage="require('../assets/zb1.png')"
                  ></tabbaricon> 
                  直播
               </mt-tab-item>
                 <!-- 音乐 -->
               <mt-tab-item>
                    <img src="../assets/yuan.jpg" alt="" width="45px">
               </mt-tab-item>
               <!--按钮三:发现-->
               <mt-tab-item id="find" @click.native="changeState(2)">
                   <tabbaricon
                     :focused="list[2].isSelect"
                     :selectedImage="require('../assets/k2.png')"
                     :normalImage="require('../assets/k1.png')"
                   ></tabbaricon>
                   K歌
               </mt-tab-item>
               <!--按钮四:我-->
               <mt-tab-item id="me"  @click.native="changeState(3)">
                   <tabbaricon
                   :focused="list[3].isSelect"
                   :selectedImage="require('../assets/my2.png')"
                   :normalImage="require('../assets/my1.png')">
                   </tabbaricon>
                   我的
               </mt-tab-item>
           </mt-tabbar>
     </div>
   </div>
</template>
<script>
//1:引入顶部标题子组件
import TitleBar from "./common/TitleBar.vue"
//1.2:引入底图图片组件
import TabBarIcon from "./common/TabBarIcon.vue"
export default {
  data(){
    return {
      active:"message",
        list:[
             {isSelect:true},  //第一个按钮状态 0
             {isSelect:false}, //第二个按钮状态 1
             {isSelect:false}, //第三个按钮状态 2
             {isSelect:false}, //第四个按钮状态 3
             
         ]
    }
  },
  methods:{
     changeState(idx){
       //功能:完成点击按钮切换图片任务 当前按钮true 其它按钮false
       ///参数idx按钮下标 0 1 2 3
       //1:创建变量size 表示数组长度
       var size = this.list.length;
       //2:创建循环遍历数据list每个元素
       for(var i=0;i<size;i++){
       //3:判断如果参数下载idx与当前按钮下标相同
       if(i==idx){
           this.list[i].isSelect=true;
       }else{
           this.list[i].isSelect=false;
       }
       //4:当前元素选中状态true
       //5:其它元素默认状态false
       }

     }
 }
, 
 //2:注册顶部标题子组件
 components:{
     //指定标签名称:子组件对象
    "titlebar":TitleBar,         //顶部标题子组件
    "tabbaricon":TabBarIcon,  //底部导航条图片子组件
    }    
  }
</script>
<style scoped>
  /*1:最外层父元素*/
.page-tabbar{
    overflow: hidden; /*溢出隐藏*/
}
/*2:内层元素*/
.page-wrap{
    overflow: auto;  /*数据多出现滚动条*/
    padding-bottom:60px;
    /* padding-top:68px; */
}
/*3:覆盖mint-ui组件原有样式-tabbar按钮中文字选中样式 42*/
.mint-tabbar > .mint-tab-item.is-selected{
    background-color: transparent;
    color:#ccc;
}
/*4:覆盖mint-ui组件原有样式-tabbar按钮中文字默认样式*/
.mint-tabbar > .mint-tab-item{
    color:#999999;
}
.c01{
  background-color:#27272f; 
  height: 60px;
  width: 100%;
  margin: 0 auto;
  padding-top:3px ;
}
.ti1{
  margin-top:-70px;
}
</style>
