<template>
  <div class="ld">
    <!-- 直播图片 -->
    <img class="imgstyle" src="../../../assets/1.png" alt="">
    <!-- 标题 -->
    <span class="headline">{{item.lname}}</span>
    <!-- 子标题 -->
    <span class="subheadline">{{item.uname}}</span>
  </div>
</template>
<script>
export default {
  data () {
    return {
      
    }
  }
  
}
</script>
<style scoped>
.imgstyle{
  /* width: 20px; */
  /* height: 20px; */
  border-radius: 9px;/*圆角 */
}
.ld{
  width:48%;/*占屏幕一半 */
  margin: 2px 0;/* 外边距 */
  padding: 2px;
  display: flex;/* 子元素设置弹性布局 */
  flex-direction: column;/* 按列排放 */
  min-height: 80px;/* 高度 */
}
.headline{
  display: flex;
  font-size: 0.8rem;
  font-weight: 800;
  margin:5px 5px 0 5px;/* 上 右 下 左 */
}
.subheadline{
  display: flex;
  font-size: 0.5rem;
  margin:5px 5px 10px 5px;/* 上 右 下 左 */
}
</style>