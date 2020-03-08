<template>
  <div class="child2">
    <div class="recDayList1">
      <span class="recDayItem1">新歌速递</span>
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
              直播中
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
  
}
</script>
<script>
export default {
  data() {
    return {
      arr:[
        {img:"timg.jpg",play:"3.3万",intr:"新型肺炎必备知识点"},
        {img:"ta.jpeg",play:"3000",intr:"丹师剑宗"},
        {img:"ta.jpeg",play:"5万",intr:"狂婿"},
      ]
    }
  },
  methods: {
  },
}
</script>
<style scoped>
  .child2{
    margin-top: 20px;
    font-size: 14px;
  }
  .child2 .recDayList1{
    display: flex;
    justify-content: space-between;
  }
  .child2 .recDayList1 .recDayItem1{
    font-size: 20px;
    font-weight: 600;
    margin-left: 10px;
  }
  .child2 .recDayList1  .recDayItem2{
    position: relative;
  }
  .child2 .recDayList1  .recDayItemchild1{
    margin-right: 20px;
  }
  .child2 .recDayList1 .recDayItemchild2{
    position: absolute;
    width:20px;
    right: 0;
    
  }
  /* ////////////// */
  .child2 .recDayList2{
    display:flex;
    flex-wrap: wrap;
    justify-content: space-around;
  }
  .child2 .recDayList2 .recDayItem{
    margin-bottom: 10px;
    text-align: left;
    width: 30%;
    /* border: 1px solid green; */
  }
  .child2 .recDayList2 .recDayItemCh{
    width: 100%;
    /* background-color: red; */
    height: 0;
    padding-top: 100%;
    border-radius: 4%;
    position: relative;
    overflow: hidden;
  }
  .child2 .recDayList2 .recDayItemChImg{
    width: 100%;
  }
  .child2 .recDayList2 .recDayItemChImg img{
    width: 100%;
  }
  .child2 .recDayList2 .recDayItemCh-list{
    position: absolute;
    top: 0px;
  }
  .child2 .recDayList2 .play{
    display: flex;
    align-items: center;
    background-color:#6ce26c;
    padding: 2px 10px 2px 10px;
    position: absolute;
    bottom: 10px;
    left: 6px;
    font-size: 10px;
    color: #fff;
    border-radius: 10px;
  }
  .child2 .recDayList2 .recDayItem .text{
    height: 20px;
    overflow: hidden;
    text-overflow: ellipsis;/*文字溢出加...*/
    white-space: nowrap;/*不换行*/
  }
</style>