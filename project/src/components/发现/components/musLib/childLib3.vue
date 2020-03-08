<template>
  <div class="child1">
    <div class="recDayList1">
      <span class="recDayItem1">会员专辑</span>
      <span class="recDayItem2">
        <span class="recDayItemchild1">更多</span>
        <img src="../../img/尖括号.png" alt="" class="recDayItemchild2">
      </span>
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
        {img:"timg.jpg",play:"3.3万",intr:"新型肺炎"},
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
  .child1{
    margin-top: 20px;
    font-size: 14px;
  }
  .child1 .recDayList1{
    display: flex;
    justify-content: space-between;
  }
  .child1 .recDayList1 .recDayItem1{
    font-size: 20px;
    font-weight: 600;
  }
  .child1 .recDayList1  .recDayItem2{
    position: relative;
  }
  .child1 .recDayList1  .recDayItemchild1{
    margin-right: 20px;
  }
  .child1 .recDayList1 .recDayItemchild2{
    position: absolute;
    width:20px;
    right: 0;
    
  }
</style>