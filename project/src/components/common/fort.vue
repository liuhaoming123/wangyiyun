<template>
  <div class="page-head-f">
    <!-- title父元素 -->
    <!-- 中间内容 -->
    <div id="d1">
       <drr></drr>
    </div>
  </div>
</template>
<script>
import  drr from "./drr2.vue";
export default {
 components:{
   drr   
 }
}
</script>
<style scoped>
   .page-head-f{
      overflow: hidden;
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
