<template>
  <div class="recDay">
    <div class="recDayList1">
      <span class="recDayItem1">热门歌单</span>
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
    <span class="update" @click="update">
      <img src="../../img/gengxin.png" alt="" style="opacity:0;">
      <img src="../../img/gengxin.png" alt="" class="updateList">
      换一批
    </span>
  </div>
</template>
<script>
export default {
  data() {
    return {
      arr:[
        {img:"timg.jpg",play:"3.3万",intr:"新型肺炎必备知识点"},
        {img:"ta.jpeg",play:"3000",intr:"丹师剑宗"},
        {img:"ta.jpeg",play:"5万",intr:"狂婿"},
        {img:"ta.jpeg",play:"60.6万",intr:"旷世谋略奇书<鬼谷子>,30个处几毛钱"},
        {img:"ta.jpeg",play:"100",intr:"旷世谋略奇书<鬼谷子>,30个处啊啊啊..."},
        {img:"ta.jpeg",play:"100",intr:"旷世谋略奇书<鬼谷子>,30个处啊啊啊..."},
      ]
    }
  },
  methods: {
    update(){
      alert("点击'换一批'")
    }
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
    justify-content: space-around;
  }
  .recDay .recDayList2 .recDayItem{
    margin-bottom: 10px;
    text-align: left;
    width: 30%;
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
  .recDay .update{
    display:block;
    line-height: 35px;
    position: relative;
  }
  .recDay .updateList{
    position: absolute;
    left: 40%;
    top: 6px;
  }
  .recDay .update img{
    width: 26px;
  }
</style>