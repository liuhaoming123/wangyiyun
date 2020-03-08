<template>
  <div class="radioClass">
    <div class="radioClasslist">
      <span class="radioClassText">电台分类</span>
      <div class="radioClassItem">
        <span class="radioClassSpan">更多</span>
        <span>
          <img src="../../img/尖括号.png" alt="" class="radioClassImg">
        </span>
      </div>
    </div>
    <div class="radioList1">
      <router-link to="" class="radioText" v-for="(item,i) of txt" :key="i">
        <div>
          <span class="radioTextList" v-text="item.val"></span>
          <span>
            <img src="" alt="">
          </span>
        </div>
      </router-link>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      txt:[
        {val:"有声小说",img:""},
        {val:"主播电台",img:""},
        {val:"相声曲艺",img:""},
        {val:"儿童乐园",img:""},
      ]
    }
  },
}
</script>
<style scoped>
.radioClass{
  margin-top: 20px;
  font-size: 14px;
  color:#333;
}
  .radioClass .radioClasslist{
    display:flex;
    justify-content: space-between;
    align-items: center;
  }
  .radioClass .radioClasslist .radioClassItem{
    position: relative;
  }
  .radioClass .radioClasslist .radioClassSpan{
    margin-right: 22px;
  }
  .radioClass .radioClasslist .radioClassImg{
    position: absolute;
    width: 18px;
    right: -2px;
    top: 2px;;
  }
  .radioClass .radioClasslist .radioClassText{
    font-size: 20px;
    font-weight: 600;
  }
  /* //////// */
  .radioClass .radioList1{
    display: flex;
    justify-content:space-between;
    padding-top: 10px;
  }
  .radioClass .radioText{
    background-color: #1296db;
    width: 23%;
    height: 0;
    padding-top: 23%;
    position: relative;
    border-radius: 10%;
  }
  .radioClass .radioText .radioTextList{
    position: absolute;
    top: 6px;
    width: 100%;
    left: 0;
    font-size: 14px;
    color:#fff;
    
  }
</style>