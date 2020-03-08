<template>
<!-- 底部导航栏 -->
  <div>
    <!-- 3个参数 -->
    <!-- focused选中状态;true  false -->
    <!-- seletcedImage; 选中图片 -->
    <!-- normalImage    默认图片 -->
    <img :src="focused?selectedImage:normalImage" class="imgstyle" alt="">
  </div>
</template>
<script>
export default {
  props: {//接收父组件数据
    //当前元素选中状态
    focused:false,
    // 选中时显示的图片
    selectedImage:{default:""},
    // 默认是显示的图片
    normalImage:{default:""}
  }
}
</script>
<style scoped>
.imgstyle{
  width: 30px;
  height: 30px;
}
</style>