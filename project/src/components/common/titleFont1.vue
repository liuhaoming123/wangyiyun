<template>
  <div class="page-head-f">
    <!-- title父元素 -->
    <div class="page-head">
      <!-- 音乐 -->
      <div v-for="(item,i) of list" :key="i" @click="dj(i)">
        <div :class="list[i].isSelect?d1:d2">
        <router-link to="" :class="item.isc">{{item.name}}</router-link>
          <!-- 蓝色下划线 -->
          </div>
      </div>
    </div>
    <!-- 中间内容 -->
    <div id="d1">
       <drr></drr>
    </div>
  </div>
</template>
<script>
import  drr from "./drr1.vue";
export default {
 props:[
   "list"
 ],
 data(){
   return {
     d1:"d1",
     d2:"d2"
    }
 },
 methods:{
  dj(index){
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
   drr   
 }
}
</script>
<style scoped>
   .page-head-f{
      overflow: hidden;
   }
   .page-head{
   display: flex;/*指定布局方式:弹性布局*/
   position: fixed;
    background-color:#212226;
   left: 0;
   top: 0;
   z-index: 98;/*显示元素上方*/
   width: 100%;/*填满父无素*/
   justify-content:space-around;/*子元素两端对齐*/
   align-items: center;/*子元素垂直居中*/ 
   height:68px;
   font-size:16px;
   margin-top: 62px;
}
.a{
  text-decoration: none; 
  display: block;
  color:#ccc;
  padding-bottom:3px;
}
.b{
  text-decoration: none; 
  display: block;
  color:#9f9ea3;
  padding-bottom:3px;
}
.d1{
  width: 65px;
  height: 30px;
  line-height: 30px;  
  border-radius: 15px;
  border: 1px solid #9f9ea3;
}
.d2{
  background: #212226;
}
#d1{
  background-color: #212226;
}
</style>
