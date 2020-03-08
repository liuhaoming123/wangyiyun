<template>
<!-- 中间内容 -->
<div id="tab">
  <div class="tab-tit">
      <a href="javascript:;" @click="curId=0" :class="{'z':curId===0}">全部</a>
      <a href="javascript:;" @click="curId=1" :class="{'z':curId===1}">歌手</a>
      <a href="javascript:;" @click="curId=2" :class="{'z':curId===2}">颜值</a>
      <a href="javascript:;" @click="curId=3" :class="{'z':curId===3}">新秀</a>
      <a href="javascript:;" @click="curId=4" :class="{'z':curId===4}">特色</a>
      <a href="javascript:;">
        <div style="width:20px;height:20px; padding-left:5px;">
          <img style="width20px;height:20px; padding-left:5px;" src="../../../assets/奖杯.png" alt="">
        </div>
      </a>
  </div>
  <div class="width100">
    <!--根据curId的值显示div,如果curId等于0，第一个div显示，其它三个div不显示。如果curId等于1，第二个div显示，其它三个div不显示。以此类推-->

  <!-- 全部 -->
  <div class="width00" v-show="curId===0">
  <!-- #############左侧################## -->
  <div class="level">
    <span class="Wordcoarse">推荐主播</span>
    <span style="padding-right:8px;">过流</span>
  </div>
  <div class="ld">
    <!-- 直播图片 -->
    <img class="imgstyle" src="../../../assets/1.png" alt="">
    <!-- 标题 -->
    <span class="headline">{{title}}</span>
    <!-- 子标题 -->
    <span class="subheadline">{{subtitle}}</span>
  </div>
  <!-- #############右侧################## -->
  <div class="ld">
    <!-- 直播图片 -->
    <img class="imgstyle" src="../../../assets/1.png" alt="">
    <!-- 标题 -->
    <span class="headline">{{title}}</span>
    <!-- 子标题 -->
    <span class="subheadline">{{subtitle}}</span>
  </div>
  <!-- #################################### -->
</div>

<!-- *********************************************************************************** -->
    <!-- 歌手 -->
    <div class="width00" v-show="curId===1">
      <!-- #############左侧################## -->
      <div class="level">
        <span class="Wordcoarse">推荐主播</span>
        <span>过流</span>
      </div>
      <div class="ld">
        <!-- 直播图片 -->
        <img class="imgstyle" src="../../../assets/2.jpg" alt="">
        <!-- 标题 -->
        <span class="headline">{{title}}</span>
        <!-- 子标题 -->
        <span class="subheadline">{{subtitle}}</span>
      </div>
      歌手
      <!-- #################################### -->
    </div>
    <!-- 颜值 -->
    <div class="width00" v-show="curId===2">
      <!-- #############左侧################## -->
      <div class="level">
        <span class="Wordcoarse">推荐主播</span>
        <span>过流</span>
      </div>
      颜值
      <!-- #################################### -->
    </div>
    <!-- 新秀 -->
    <div class="width00" v-show="curId===3">
      <!-- #############左侧################## -->
      <div class="level">
        <span class="Wordcoarse">推荐主播</span>
        <span>过流</span>
      </div>
      新秀
      <!-- #################################### -->
    </div>
    <!-- 特色 -->
    <div class="width00" v-show="curId===4">
      <!-- #############左侧################## -->
      <div class="level">
        <span class="Wordcoarse">推荐主播</span>
        <span>过流</span>
      </div>
      特色
      <!-- #################################### -->
    </div>
  </div>
</div>


  
</template>
<script>
export default {
  name: "Tab",
  data() {
    return{
      curId: 0
    }
  },
  computed: {},
  methods: {},
  mounted: function () {
  },
  props: {//接收父元素数据
    // content1:{default:""},
    // content2:{default:""},
    // content3:{default:""},
    // content4:{default:""},
    // content5:{default:""},
    // #######################
    imgurl:{default:""},//图片         默认值空字符串
    title:{default:""},//标题          默认值空字符串
    subtitle:{default:""},//子标题     默认值空字符串
  }
}
</script>
<style scoped>
div{
  border: 1px solid red;
}
a{
  text-decoration: none;
}
#tab{
  display: flex;/* 弹性布局 */
  flex-wrap: wrap;/* 子元素换行 */
  justify-content: space-between;/* 两端对齐 */
  background: #f9f5f5;
  margin-top:50px; /* 上外边距 */
}
.tab-tit{
  width: 100%;
  justify-content: space-between;
  display: flex;/* 子元素设置弹性布局 */
  }
/* 没选中状态 */
  .tab-tit a{
  width:14%;/*占屏幕14% */
  border: 1px solid rgba(212, 159, 159, 0);/* 边框 */
  border-radius: 15px;/*圆角 */
  margin: 2px 0;/* 外边距 */
  padding: 2px;
  background-color: #f9f5f5;
  justify-content: space-between;
  font-size: 10px;/* 字体大小 */
  display: flex;/* 子元素设置弹性布局 */
  flex-direction: column;/* 按列排放 */
  /* min-height: 275px; 高275px */
  margin-right:2px; 
  line-height: 25px;
  }
  /* 选中状态 */
  .tab-tit .z{
  width:14%;/*占屏幕比 */
  border: 1px solid #ccc0;/* 边框 */
  border-radius: 15px;/*圆角 */
  margin: 2px 0;/* 外边距 */
  padding: 2px;
  background: #e8e5e5;/* 背景颜色 */
  justify-content: space-between;/* 两端对齐 */
  font-size: 10px;/* 字体大小 */
  display: flex;/* 子元素设置弹性布局 */
  flex-direction: column;/* 按列排放 */
  min-height: 25px; /* 高30px */
  margin-right:5px; 
  margin-left:4px; 
  line-height: 25px;
  font-weight: 800;/* 字体粗细 */
  }
.width100{
  width: 100%;
  justify-content: space-between;
  display: flex;/* 子元素设置弹性布局 */
  flex-direction: column;/* 按列排放 */
}
.imgstyle{
  /* width: 20px; */
  /* height: 20px; */
  border-radius: 9px;/*圆角 */
}
.width00{
  /* justify-content: space-between;
  display: flex;/* 子元素设置弹性布局 */
   /* flex-direction: column;/* 按列排放 */
}
.level{
  width: 100%;
  height: 26px;
  display: flex;/* 弹性布局 */
  justify-content:space-between;/* 两端对齐 */
  margin-top: 13px;
}
.ld{
  width:45%;/*占屏幕一半 */
  margin: 4px 0;/* 外边距 */
  padding: 2px;
  justify-content: space-between;
  display: flex;/* 子元素设置弹性布局 */
  flex-direction: column;/* 按列排放 */
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
.Wordcoarse{
  font-weight: 800;
  padding-left: 8px;
}
.dd{
  width: 100%;
  justify-content: space-between;/* 两端对齐 */
  display: flex;/* 子元素设置弹性布局 */
}
</style>