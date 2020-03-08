
<template>
    <div>
      <div id="tab">
        <div class="tab-tit">
          <!--点击设置curId的值  如果curId等于0，第一个a添加cur类名，如果curId等于1，第二个a添加cur类名，以此类推。添加了cur类名，a就会改变样式 @click,:class ,v-show这三个是vue常用的指令或添加事件的方式-->
          <a href="javascript:;" @click="curId=0" :class="{'cur':curId===0}">html</a>
          <a href="javascript:;" @click="curId=1" :class="{'cur':curId===1}">css</a>
          <a href="javascript:;" @click="curId=2" :class="{'cur':curId===2}">javascript</a>
          <a href="javascript:;" @click="curId=3" :class="{'cur':curId===3}">vue</a>
        </div>
        <div class="tab-con">
          <!--根据curId的值显示div,如果curId等于0，第一个div显示，其它三个div不显示。如果curId等于1，第二个div显示，其它三个div不显示。以此类推-->
          <div v-show="curId===0">
            <div class="aa">
              <div class="ld">
                <!-- 直播图片 -->
                <img class="imgstyle" src="../../../assets/1.png" alt="">
                <!-- 标题 -->
                <span class="headline">{{title}}</span>
                <!-- 子标题 -->
                <span class="subheadline">{{subtitle}}</span>
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
    justify-content: space-between;
    display: flex;
    flex-wrap: wrap;
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
  /* .tab-con div{
    border: 1px solid #ccc;
    height: 400px;
    padding-top: 20px;
  } */
  .aa{
    width: 100%;
    justify-content: space-between;
    flex-direction: row;
    display: flex;
  }
  .ld{
    width:45%;/*占屏幕一半 */
    margin: 4px 0;/* 外边距 */
    padding: 2px;
    justify-content: space-between;
    display: flex;/* 子元素设置弹性布局 */
    flex-direction:row;/* 按列排放 */
  }
</style>