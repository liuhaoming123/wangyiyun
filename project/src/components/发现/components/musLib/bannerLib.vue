<template>
  <div class="bannerLib">
    <div class="swiper-inner">
      <!-- swiper -->
      <swiper :options="swiperOption">
        <swiper-slide v-for="(item,i) of imgs" :key="i">
          <img :src="require('../../img/'+item)" alt="">
        </swiper-slide>
        <div class="swiper-pagination" slot="pagination"></div>
      </swiper>
    </div>
  </div>
</template>

<script>
import 'swiper/dist/css/swiper.css'
import { swiper, swiperSlide } from 'vue-awesome-swiper'
  export default {
    data() {
      return {
        swiperOption: {//
          effect: 'slide',//切换效果 coverflow:3d旋转  slide:位移切换 fade"（淡入）   cube（方块） "flip"（3d翻转
          centeredSlides: true,//设定为true时，轮播图会居中，而不是默认状态下的居左
          slidesPerView:1,//一次显示图片的张数量, auto为自适应
          loop:true,//循环播放
          autoplay: {
            delay: 3000,//间隔时间
            disableOnInteraction: false,//当用户操作之后,不停止轮播
          },
          coverflowEffect: {//cover flow是类似于苹果将多首歌曲的封面以3D界面的形式显示出来的方式。coverflow效果参数，可选值
            rotate: 50,//slide做3d旋转时Y轴的旋转角度。默认50
            stretch: 0,//每个slide之间的拉伸值，越大slide靠得越紧。 默认0
            depth: 100,//slide的位置深度。值越大z轴距离越远，看起来越小。 默认100。
            modifier: 1,//depth和rotate和stretch的倍率
            slideShadows : false//开启slide阴影。默认 true。
          },
          pagination: {
            el: '.swiper-pagination'//使用分页导航器
          }
        },
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
      swiper,swiperSlide
    }
  }
</script>

<style scoped>
  .bannerLib .swiper-inner {
    width: 100%;
  }
  .bannerLib .swiper-slide {
    background-position: center;
    background-size: cover;
    width: 100%;
  }
  .bannerLib img{
    width: 100%;
  }
</style>