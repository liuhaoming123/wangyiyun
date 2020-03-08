<template>
<div>
  <mt-swipe :auto="3000" style="height:140px;">
  <mt-swipe-item v-for="(item,i) of imgs" :key="i">
    <img :src="require('../../img/'+item)"  alt="" style="width:360px;">
  </mt-swipe-item>
</mt-swipe>
</div>
</template>
<script>
import { Swipe, SwipeItem } from 'mint-ui';
// Vue.component(Swipe.name, Swipe);
// Vue.component(SwipeItem.name, SwipeItem);
  export default {
    data() {
      return {
        imgs:[
          "banner.jpg",
          "banner.jpg",
          "banner.jpg",
          "banner.jpg",
          "banner.jpg",
          "banner.jpg",
        ]
      }
    },
    components:{
      Swipe,
      SwipeItem
    }
  }
</script>
<style scoped>
  .bannerImg{
    width: 96%;
  }
</style>