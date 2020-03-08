<template>
  <div class="page-head-f">
    <!-- title父元素 -->
    <div class="page-head">
      <!-- 音乐 -->
      <div v-for="(item,i) of list" :key="i" @click="dj(i)">
        <router-link to="" :class="item.isc">{{item.name}}</router-link>
          <!-- 蓝色下划线 -->
          <drr :focused="list[i].isSelect" :d1="d1" :d2="d2"></drr>
      </div>
      <!-- 图片1 -->
      <div class="searchdiv">
              <img :src="sImg" style="width:25px;" />
      </div>
      <!-- 图片1 -->
      <div class="searchdiv">
              <img :src="gImg" style="width:25px;" />
      </div>
    </div>
    <!-- 中间内容 -->
    <listzh class="d1" v-if="d3==0"></listzh>
    <center v-if="d3==1"></center>
    <!-- <fort  v-if="d3==2"></fort> -->
    <fort v-if="d3==2"></fort>
    <fort v-if="d3==3"></fort>
  </div>
</template>
<script>
import center from "./center.vue"
import listzh from "./listzh.vue"
import fort from "./fort.vue"
import  drr from "./drr.vue";
export default {
 props:[
   "list","sImg","gImg"
 ],
 data(){
   return {
     d1:"d1",
     d2:"d2",
     d3:""
    }
 },
 methods:{
  dj(index){
    this.d3=index;
    var size = this.list.length;
    for(var i=0;i<size;i++){
      if(index==i){
         this.list[i].isSelect=true;
         this.list[i].isc="b";
      }else{
         this.list[i].isSelect=false;
        this.list[i].isc="a";
      }
    }
  }
 },
 components:{
   drr, listzh,center,fort
 }
}
</script>
<style scoped>
   .page-head{
   display: flex;/*指定布局方式:弹性布局*/
   position: fixed;/*固定定位*/
   left: 0;
   top: 0;
   z-index: 98;/*显示元素上方*/
   width: 100%;/*填满父无素*/
   justify-content:space-around;/*子元素两端对齐*/
   align-items: center;/*子元素垂直居中*/ 
   background-color:#212226;/*16:49*/
   height:68px;
   font-size:16px;
}
.a {
  text-decoration: none; 
  color:#9f9ea3;
  padding-bottom:3px;
}
.b{
  text-decoration: none; 
  color:#9f9ea3;
  padding-bottom:3px;
  font-size: 24px;
}
.page-head-f{
  padding-top: 68px;
}
.d1{
  margin-top: 62px;
}
</style>
