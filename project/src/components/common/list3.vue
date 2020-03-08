<template>
  <div class="d1">
    <!-- 上一 -->
    <div class="c1">
      <div class="c11"><img src="../../assets/gd2.png" alt="" width="18px"><span>&nbsp;自建跟单 2</span></div> 
      <div class="c2">
         <div><img src="../../assets/jh2.png" alt="" width="23px"></div> 
         <div class="c22"><img src="../../assets/fx1.png" alt="" width="23px"></div> 
         <div><img src="../../assets/gd1.png" alt="" width="23px"></div> 
         <div class="c12"></div>
      </div>
    </div>
    <!-- 下一 -->
    <div class="d2">
       <div class="cd1">
         <div>
            <div class="cd2">
              <div class="c4"></div>
              <div><img src="../../assets/1.jpg" alt="" width="60px"></div>
              <div class="cd3">
                <div class="cdxl">我喜欢</div>
                <div class="cdxh">0首</div>
              </div>
            </div>
         </div>
         <div class="c44"><img src="../../assets/gd1.png" alt="" width="23px"></div>
         <div></div>
       </div>
       <div>
           <div class="cd1">
         <div>
            <div class="cd2">
              <div class="c4"></div>
              <div><img src="../../assets/2.jpg" alt="" width="60px"></div>
              <div class="cd3">
                <div class="cdxl">爱收藏</div>
                <div class="cdxh">0首</div>
              </div>
            </div>
         </div>
         <div class="c44"><img src="../../assets/gd1.png" alt="" width="23px"></div>
         <div></div>
       </div>
       </div>
    </div>
  </div>
</template>
<script>
export default {
  
}
</script>
<style scoped>
 .d1{
   display: flex;
   flex-flow: column nowrap;
   width: 100%;
   background:#212226;
   padding: 25px 0;
 }
 .c1{
   display: flex;
   justify-content: space-between;
   align-items: center;
 }
 .c2{
   display: flex;
   justify-content: space-around;
   align-items: center;
 }
 .c11,.cd2{
   display: flex;
   align-items: center;
   color: #9f9ea3;
 }
 .c22{
   margin: 0 15px;
 }
 .d2{
   display: flex;
   flex-flow: column;
 }
 .cd1{
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-top: 15px;
 }
 .cd3{
   display: flex;
   flex-flow: column;
   align-items: center;
   margin-left:12px; 
 }
 .cdxl{
   margin-top: -8px;
 }
 .cdxh{
    margin-top:13px;
 }
.c4{
  width: 8px;
}
.c44{
  margin-left:185px;
}
.c12{
  width: 11px;
}
.c11{
  margin-left: 8px;
}
</style>
