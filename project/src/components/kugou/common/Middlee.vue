<template>
<!-- 中间内容 -->
<div class="content">
  <div class="width14t">{{content1}}</div>
  <div class="width14">{{content2}}</div>
  <div class="width14">{{content3}}</div>
  <div class="width14">{{content4}}</div>
  <div class="width14">{{content5}}</div>
  <div class="">
    <img :src="golden" alt="">
  </div>
  <div class="level">
    <span class="Wordcoarse">推荐主播</span>
    <span>过流</span>
  </div>
  <div class="ld">
    <!-- 直播图片 -->
    <img class="imgstyle" src="../../../assets/1.png" alt="">
    <!-- 标题 -->
    <span class="headline">{{title}}</span>
    <!-- 子标题 -->
    <span class="subheadline">{{subtitle}}</span>
  </div>
</div>
</template>
<script>
export default {
  data () {
    return {
      
    }
  },
  props: {//接收父元素数据
    content1:{default:""},
    content2:{default:""},
    content3:{default:""},
    content4:{default:""},
    content5:{default:""},
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
.content{
  display: flex;/* 弹性布局 */
  flex-wrap: wrap;/* 子元素换行 */
  justify-content: space-between;/* 两端对齐 */
  background: #f9f5f5;
  margin-top:50px; /* 上外边距 */
}
.width14{
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
.width14t{
  width:14%;/*占屏幕14% */
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
.imgstyle{
  /* width: 20px; */
  /* height: 20px; */
  border-radius: 9px;/*圆角 */
}
.level{
  width: 100%;
  height: 25px;
  display: flex;/* 弹性布局 */
  justify-content:space-between;/* 两端对齐 */
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
.Wordcoarse{
  font-weight: 800;
}
</style>

// ##############################################################################

<template>
    <div>
      <div id="tab">
        <div class="tab-tit">
          <!--点击设置curId的值  如果curId等于0，第一个a添加cur类名，如果curId等于1，第二个a添加cur类名，以此类推。添加了cur类名，a就会改变样式 @click,:class ,v-show这三个是vue常用的指令或添加事件的方式-->
          <a href="javascript:;" @click="curId=0" :class="{'cur':curId===0}">html</a>
          <a href="javascript:;" @click="curId=1" :class="{'cur':curId===1}">css</a>
          <a href="javascript:;" @click="curId=2" :class="{'cur':curId===2}">javascript</a>
          <a href="javascript:;" @click="curId=3" :class="{'cur':curId===3}">vue</a>
          <a href="javascript:;" @click="curId=4" :class="{'cur':curId===4}">vue</a>
        </div>
        <div class="tab-con">
          <!--根据curId的值显示div,如果curId等于0，第一个div显示，其它三个div不显示。如果curId等于1，第二个div显示，其它三个div不显示。以此类推-->
          <div v-show="curId===0">
            html<br/>
          </div>
          <div v-show="curId===1">
            css
          </div>
          <div v-show="curId===2">
            javascript
          </div>
          <div v-show="curId===3">
            vue
          </div>
          <div v-show="curId===4">
            dd
          </div>
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
        }
    }
</script>
 
<style scoped>
  #tab{
    width: 600px;
    margin: 0 auto;
  }
  .tab-tit{
    font-size: 0;
    width: 600px;
  }
  /* 没选中状态 */
  .tab-tit a{
    display: inline-block;
    height: 40px;
    line-height: 40px;
    font-size: 16px;
    width: 25%;
    text-align: center;
    background: #ccc;
    color: midnightblue;
    text-decoration: none;
  }
  /* 选中状态 */
  .tab-tit .cur{
    background: yellowgreen;
    color: #fff;
  }
  .tab-con div{
    border: 1px solid #ccc;
    height: 400px;
    padding-top: 20px;
  }
</style>