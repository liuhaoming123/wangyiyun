<template>
  <div class="childEnd">
    <div class="recDayList1">
      <span class="recDayItem1">全部分类</span>
    </div>
    <div class="divEnd">
      <span v-for="(item,i) of list2" :key="i" v-text="item" class="spanEnd"></span>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
    }
  },
  props:["list2"],
  methods: {
  },
}
</script>
<style scoped>
  .childEnd{
    margin-top: 20px;
    font-size: 14px;
    margin-bottom: 30px;
  }
  .childEnd .recDayList1{
    display: flex;
    justify-content: space-between;
  }
  .childEnd .recDayList1 .recDayItem1{
    font-size: 20px;
    font-weight: 600;
  }
  .childEnd .divEnd{
    display:flex;
    justify-content: space-between;
    white-space: nowrap;
    flex-wrap: wrap;
    margin-top: 20px;
  }
  .childEnd .spanEnd{
    width: 100px;
    background-color: #eee;
    margin-bottom: 10px;
    padding-bottom: 5px;
    padding-top: 5px;
    border-radius: 20px;
  }
</style>