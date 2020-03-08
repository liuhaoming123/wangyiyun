<template>
  <div class="d1">
    <div class="d2"><img src="../../assets/kg.jpg" alt="" width="150px"></div>
    <div><span class="d3">暂无好友动态</span></div>
    <div><span class="d4">点击关注更多,让你的动态跟有趣</span></div>
    <div class="d5">关注更多</div>
    <rightb></rightb>
  </div>
</template>
<script>
import rightb from './rightb.vue'
export default {
  components:{
    rightb
  }
}
</script>
<style scoped>
  .d1{
    width: 100%;
    height: 580px;
    position: relative;
  }
  .d2{
    position: absolute;
    top:45%;
    left: 50%;
    margin-left:-75px;
    margin-top:-80px; 
  }
  .d3{
    position: absolute;
    color: #9f9ea3;
     top:70%;
    left: 50%;
    margin-left:-50px;
    margin-top:-80px; 
  }
  .d4{
     position: absolute;
    color: #9f9ea3;
     top:75%;
    left: 50%;
    margin-left:-115px;
    margin-top:-80px; 
  }
  .d5{
    width: 100px;
     position: absolute;
     color: #9f9ea3;
     top:83%;
    left: 50%;
    margin-left:-50px;
    margin-top:-80px; 
    background-color: #005fbd;
    border-radius: 10px;
    color: #cadfeb;
  }
</style>
