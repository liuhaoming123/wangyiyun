<template>
  <div class="radioNav">
    <ul class="navUl">
      <li v-for="(item,i) of nav" :key="i">
        <router-link to="" class="navRouter">
          <img :src="require('../../img/'+item.img)" alt="" class="nvaImg"><br>
          <span v-text="item.val" class="navSpan"></span>
        </router-link>
      </li>
    </ul>
  </div>
</template>
<script>
export default {
  data() {
    return {
      nav:[
        {img:"ai.png",val:"AI朗读"},
        {img:"diantai.png",val:"音乐电台"},
        {img:"yuyin.png",val:"语音直播"},
        {img:"paihangbang.png",val:"排行榜"},
        {img:"htmal5icon02.png",val:"我的电台"},
      ]
    }
  },
}
</script>
<style scoped>
  .radioNav{
    margin-top: 20px;
  }
  .radioNav .navUl{
    list-style: none;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: space-around;
  }
  .radioNav .navRouter{
    text-decoration: none;
  }
  .radioNav .nvaImg{
    width: 40px;
  }
  .radioNav .navSpan{
    color: #333;
  }
</style>