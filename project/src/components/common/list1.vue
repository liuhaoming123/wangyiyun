<template>
  <div class="c1">
    <!-- 左边 -->
   <div class="c2">
       <div><img src="../../assets/mr.png" width="55px" alt=""></div>
       <div class="left">
         <div class="c22">
          <div><span class="cx1">FS先生</span></div>
          <div class="s1">SVIP</div>
         </div>
         <div class="c222"><div class="L1">LV.0</div><div></div><span class="s2">听歌0分钟</span></div>
       </div>
   </div>
   <!-- 右边 -->
   <div class="c3">
      <div><img src="../../assets/maikefeng.png" alt="" width="25px" class="i1"></div>
      <div><img src="../../assets/my3.png" alt="" width="25px"></div>
      <div class="c4"></div>
   </div>
  </div>
</template>
<script>
export default {
  
}
</script>
<style scoped>

  .c1{
    display: flex;
    width: 100%;
    height: 68px;
    justify-content: space-between;
     align-items: center;/*子元素垂直居中*/ 
     z-index: 999;
     background:#212226;
  }
  /* div{
    border: 1px solid red;
  } */
  .c2,.c3,.c22,.c222{
     display: flex;
      align-items: center;/*子元素垂直居中*/ 
  }
  .i1{
    margin-right:25px; 
  }
  .s1{
     width: 40px;
   background-color: #9f9ea3;
    border-radius: 30px;
    color:#fff;
    margin-left: 3px;
    font-size: 14px;
  }
  .L1{
    width: 40px;
     color: #9f9ea3;
     border: 2px solid #9f9ea3;
    border-radius: 30px;
  }
  .left{
    margin-left: 8px;
  }
  .c22{
    margin-top: -8px;
  }
  .c222{
    margin-top: 8px;
  }
  .s2{
    margin-left: 5px;
    font-size: 13px;
  }
  .cx1,.L1,.s2{
    color: #9f9ea3;
  }
  .c2{
    margin-left: 8px;
  }
  .c4{
    width: 8px;
  }
  .c1{
    padding-top: 15px;
  }
</style>
