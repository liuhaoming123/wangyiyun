<template>
  <div class="recDay">
    <div class="recDayList1">
      <span class="recDayItem1">{{name}}</span>
      <span class="recDayItem2">
        <span class="recDayItemchild1">更多</span>
        <img src="../../img/尖括号.png" alt="" class="recDayItemchild2">
      </span>
    </div>
    <div class="recDayList2">
      <!-- 单个推荐 -->
      <div class="recDayItem" v-for="(item,i) of arr" :key="i">
        <div class="recDayItemCh">
          <div class="recDayItemCh-list">
            <div class="recDayItemChImg">
              <img :src="require('../../img/'+item.img)" alt="" >
            </div>
            <div class="play">
              <div><img src="../../img/bofangsanjiaoxing.png" alt=""></div>
              <span v-text="item.play"></span>
            </div>
          </div>
        </div>
        <div class="text" v-text="item.intr">
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
    }
  },
  props:[
    "name",
    "arr"
  ],
  methods: {
  },
}
</script>
<style scoped>
  .recDay{
    margin-top: 20px;
    font-size: 14px;
    margin-bottom: 30px;
  }
  .recDay .recDayList1{
    display: flex;
    justify-content: space-between;
  }
  .recDay .recDayList1 .recDayItem1{
    font-size: 20px;
    font-weight: 600;
  }
  .recDay .recDayList1  .recDayItem2{
    position: relative;
  }
  .recDay .recDayList1  .recDayItemchild1{
    margin-right: 20px;
  }
  .recDay .recDayList1 .recDayItemchild2{
    position: absolute;
    width:20px;
    right: 0;
    
  }
  /* ////////////// */
  .recDay .recDayList2{
    display:flex;
    flex-wrap: wrap;
    justify-content: space-between;
  }
  .recDay .recDayList2 .recDayItem{
    margin-bottom: 10px;
    text-align: left;
    width: 32%;
    /* border: 1px solid green; */
  }
  .recDay .recDayList2 .recDayItemCh{
    width: 100%;
    /* background-color: red; */
    height: 0;
    padding-top: 100%;
    border-radius: 4%;
    position: relative;
    overflow: hidden;
  }
  .recDay .recDayList2 .recDayItemChImg{
    width: 100%;
  }
  .recDay .recDayList2 .recDayItemChImg img{
    width: 100%;
  }
  .recDay .recDayList2 .recDayItemCh-list{
    position: absolute;
    top: 0px;
  }
  .recDay .recDayList2 .play{
    display: flex;
    align-items: center;
    width: 100%;
    background-color: rgba(99, 99, 99, .2);
    position: absolute;
    bottom: 0;
    font-size: 12px;
    height: 20px;
    line-height: 20px;
    color: #fff;
  }
  .recDay .recDayList2 .play img{
    width: 14px;
  }
  .recDay .recDayList2 .play div{
    padding-left: 4px;
    padding-right: 4px;
  }
  .recDay .recDayList2 .recDayItem .text{
    height: 40px;
    overflow: hidden;
    text-overflow: ellipsis;/*文字溢出加...*/
    white-space: nowrap;/*不换行*/
  }
</style>