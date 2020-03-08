<template>
<!-- 头部标题 -->
    <!-- 子组件 -->
  <div class="blue-head">
      <!-- 左侧文字 -->
    <!-- tj:推荐 -->
    <span class="font-size20">{{leftTitletj}}</span>
    <!-- sp:视频 -->
    <span class="font-size20">{{leftTitlesp}}</span>
    <!-- ds:电台-听书 -->
    <span class="font-size20">{{leftTitleds}}</span>
    <div class="ringht-head">
      <div>
        <!-- 搜索图片 -->
        <img :src="rightFirstImg" style="width:25px; margin-right:20px;" alt="">
      </div>
      <div>
        <!-- 工具栏图片 -->
        <img :src="rightSecondImg" style="width:30px; margin-top:4px;" alt="">
      </div>
    </div>
  </div>
</template>
<script>
export default {
  props:{//接收父元素数据/
    //左边消息数据
    leftTitletj:{default:""},
    leftTitlesp:{default:""},
    leftTitleds:{default:""},
    //右边图片数据
    rightFirstImg:{default:""},
    rightSecondImg:{default:""},
  }
}
</script>
<style scoped>
/* 1:外层父元素弹性布局 */
.blue-head{
  display: flex;/*弹性布局 */
  position: fixed;/*固定定位 */
  z-index: 999;/*显示元素上方*/
  width: 100%;/*填满父元素 */
  justify-content: space-between;/*两端对齐 */
  align-items: center;/*垂直居中 */
  background-color: #44bef5;/*背景颜色 */
  padding: 14px;/*内边距 */
  right: -25px;
  top: 0;
}
/* 2:右侧元素弹性布局 */
.ringht-head{
  display: flex;/*固定定位 */
  padding-right:40px;/*内边距 */ 
}
/* 3.字体颜色大小 */
.font-size20{
  font-size: 17px;/*字体大小 */
  color: #fff;/*字体颜色 */
  /* 字体样式 */
}
</style>