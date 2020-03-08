<template>
  <div class="videoChild">
    <video src="../../img/x.mp4" width="90%" class="mp4" controls></video>
    <div class="mp4Text">
      是谁说胖子的实力不行?150斤胖妹魔性开唱,唱出太多胖子的心声音
    </div>
    <div class="videoChildList">
      <div class="ChildItem">
        <div v-if="isPlay">
          <div><img src="../../img/timg.jpg" alt=""></div>
          <span>擦肩可耻取货的穷评价哦</span>
        </div>
        <div v-else  class="ChildItem-1">
          <div><img src="../../img/timg.jpg" alt=""></div>
          <span>+关注</span>
        </div>
      </div>
      <div class="ChildItemTxt">
        <div>
          <div><img src="../../img/zan.png" alt=""  class="txtImg1"></div>
          <span>151</span>
        </div>
        <div>
          <div><img src="../../img/duihua.png" alt="" class="txtImg2"></div>
          <span>49</span>
        </div>
        <div class="txtDiv">···</div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      isPlay:true
    }
  },
}
</script>
<style scoped>
  .videoChild .mp4{
    border-radius: 8px;
  }
  .videoChild .mp4Text{
    margin: 2px 18px 0 18px;
    text-align: left;
    font-size: 14px;
  }
  .videoChild .videoChildList{
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin: 2px 18px 0 18px;
    font-size: 12px;
  }
  .videoChild .ChildItem>div{
    display:flex;
    align-items: center;
  }
  .videoChild .ChildItem img{
    width: 40px;
    border-radius: 50%;
  }
  .videoChild .ChildItem span{
    padding-left: 4px;
  }
  .videoChild .ChildItem-1{
    height: 30px;
    background-color: #cde2ff;
    border-radius: 40px;
    width:90px;
  }
  .videoChild .ChildItemTxt{
    display: flex;
  }
  .ChildItemTxt>div{
    display: flex;
    align-items: center;
    margin-right: 10px;
  }
  .ChildItemTxt span{
    font-size: 12px;
    text-align: center;
    margin-left: 2px;
  }
  .txtImg1{
    width: 18px;
  }
  .txtImg2{
    width: 24px;
  }
  .txtDiv{
    margin-left: 10px;
    font-weight: 900;
  }
</style>