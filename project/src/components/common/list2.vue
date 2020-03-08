<template>
   <div class="d1">
     <!-- 上一 -->
     <div class="c1">
       <div class="c11"><img src="../../assets/huiyuanzhongxin (1).png" alt="" width="30px"><span class="snoe">会员中心</span></div>
       <div><span class="s2">会员尊享21项豪华特权 ></span></div>
       <div></div>
     </div>
     <div class="d2">
       <div>
         <div><img src="../../assets/bendi.png" alt="" width="40px"></div>
         <div class="c1cc">本地</div>
         <div class="c1c">5</div>
       </div>
        <div>
         <div><img src="../../assets/shoucang.png" alt="" width="40px"></div>
         <div class="c1cc">收藏</div>
         <div class="c1c">0</div>
       </div>
        <div>
         <div><img src="../../assets/xiazai.png" alt="" width="40px"></div>
         <div class="c1cc">下载</div>
         <div class="c1c">0</div>
       </div>
        <div>
         <div><img src="../../assets/yunyunpan.png" alt="" width="40px"></div>
         <div class="c1cc">云盘</div>
         <div class="c1c">0</div>
       </div>
        <div>
         <div><img src="../../assets/zuijinyuedu.png" alt="" width="40px"></div>
         <div class="c1cc">最近</div>
         <div class="c1c">1</div>
       </div>
     </div>
   </div>  
</template>
<script>
export default {
  data(){
    return {

    }
  }
}
</script>
<style scoped>
  .d1{
    display: flex;
    flex-flow:column nowrap;
    width: 100%;
    background: #272731;
    padding:30px 0;
  }
  .c1{
    display: flex;
    align-items: center;
    justify-content: space-between;
  }
  .d2{
    display: flex;
    align-items: center;
    justify-content: space-around;
    width: 100%;
    margin-top: 25px;
  }
  .snoe{
     margin-left: 3px;
      color: burlywood;
  }
  .c11{
    display: flex;
    align-items: center;
    margin-left: 8px;
  }
  .s2{
    font-size: 14px;
    color: #9f9ea3;
    margin-left: 75px;
    }
    .c1cc{
      margin:10px auto;
      color: #9f9ea3;
    }
    .c1c{
       color: #9f9ea3;
    }
</style>
