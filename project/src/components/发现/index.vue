<template>
  <div class="index">
    <div class="indexWrap">
      <!-- <mt-tabbar v-model="active" fixed>
        <mt-tab-item id="recommended">
          推荐
        </mt-tab-item>
        <mt-tab-item id="foundRadio">
          视频
        </mt-tab-item>
        <mt-tab-item id="foundVideo">
          电台·听书
        </mt-tab-item>
      </mt-tabbar> -->
      <!-- <mt-tab-container  v-model="active">
        <mt-tab-container-item id="recommended">
          <recommended></recommended>
        </mt-tab-container-item>
        <mt-tab-container-item id="foundRadio">
          <found-video></found-video>
        </mt-tab-container-item>
        <mt-tab-container-item id="foundVideo">
          <found-radio></found-radio>
        </mt-tab-container-item>
      </mt-tab-container> -->


        <mt-navbar v-model="active" class="idx" fixed>
          <mt-tab-item id="recommended">推荐</mt-tab-item>
          <mt-tab-item id="found-video">视频</mt-tab-item>
          <mt-tab-item id="found-radio">电台·听书</mt-tab-item>
        </mt-navbar>
        <div class="idxnav"></div>
<!-- tab-container -->
      <mt-tab-container v-model="active" class="idxchild">
        <mt-tab-container-item id="recommended">
          <recommended></recommended>
        </mt-tab-container-item>
        <mt-tab-container-item id="found-video">
          <found-video></found-video>
        </mt-tab-container-item>
        <mt-tab-container-item id="found-radio">
          <found-radio></found-radio>
        </mt-tab-container-item>
      </mt-tab-container>
      <div>
      </div>
    </div>
  </div>
</template>
<script>
import recommended from './components/recommended'
import foundRadio from './components/radio'
import foundVideo from './components/video'
export default {
  data() {
    return {
      active:"recommended",
      currentIndex:[{iSelect:true},{iSelect:false},{iSelect:false}]
    }
  },
  components:{
    recommended,
    foundVideo,
    foundRadio
  },
  methods: {
    changeState(idx){
     //功能:为底部tabbar按钮绑定事件
     //    点击
     //功能:修改对应按钮状态
     //1:创建循环遍历所有按钮
      var size = this.currentIndex.length;
      for(var i=0;i<size;i++){
      //2:判断如果当前下标与idx相等
        if(i==idx){
        //3:当前按钮状态true
        this.currentIndex[i].iSelect=true;
        }else{
        //4:其它按钮状态false
        this.currentIndex[i].iSelect=false;
        }
      }
   }
  },
}
</script>
<style scoped>
  body{
    color: #666;
  }
  .index{
    overflow: hidden;
  }
  .index .indexWrap{
    overflow: auto;
    position: relative;
  }
  .idxnav{
    position:fixed;
    top: 0;
    z-index:9;
    width: 100%;
    background-color: #fff;
    height: 55px;;
  }
  .idx{
    width: 60%;
    position: fixed;
    z-index: 10;
  }
  .idxchild{
    margin-top: 60px;
  }

</style>