<template>
  <div class="recommended">
    <div class="nav">
      <div @click="musLib">
        <img src="../img/yinle.png" alt=""><br>
        乐库
      </div>
      <div>
        <img src="../img/xihuan.png" alt=""><br>
        猜你喜欢
      </div>
      <div>
        <img src="../img/gedan.png" alt=""><br>
        歌单
      </div>
      <div>
        <img src="../img/paihangbang.png" alt=""><br>
        排行榜
      </div>
      <div>
        <img src="../img/gengduo.png" alt=""><br>
        更多
      </div>
    </div>
    <div class="palyList">
      <div class="playItem1">
        <span class="itemSpan-1">24</span>
        <span class="itemSpan-2">FEB</span>
        <span class="itemSpan-3">周一</span>
      </div>
      <router-link to="" class="playItem2">
        歌单广场&nbsp;<img src="../img/尖括号.png" alt="" style="width:16px;margin-bottom: -2px; ">
      </router-link>
      <div class="playLitsItem">
        <div class="playLitsItemChild">
          <img src="../img/timg.jpg" alt="">
          <span>根据您的口味推荐</span>
        </div>
        <div class="playLitsItemChild">
          <img src="../img/timg.jpg" alt="">
          <span>新奇贝斯FutureBass瞬间心动的....</span>
        </div>
        <div class="playLitsItemChild">
          <img src="../img/timg.jpg" alt="">
          <span>日漫经典英文歌曲,二次元与欧美</span>
        </div>
        <div class="playLitsItemChild">
          <img src="../img/timg.jpg" alt="">
          <span>日漫经典英文歌曲,二次元与欧美</span>
        </div>
        <div class="playLitsItemChild">
          <img src="../img/timg.jpg" alt="">
          <span>日漫经典英文歌曲,二次元与欧美</span>
        </div>
        <div class="playLitsItemChild">
          <img src="../img/timg.jpg" alt="">
          <span>日漫经典英文歌曲,二次元与欧美</span>
        </div>
      </div>
    </div>
    <div class="video">
      <div class="nav">
              <router-link to="">
                全部
              </router-link>
              <router-link to="">
                新歌
              </router-link>
              <router-link to="">
                歌单
              </router-link>
              <router-link to="">
                直播
              </router-link>
              <router-link to="">
                视频
              </router-link>
              <!-- <router-link to="">
                评论
              </router-link>
              <div>
                <router-link to="">
                  短视频
                </router-link>
              </div> -->
              <router-link to="">
                <img src="../img/尖括号.png" alt="" style="width:16px;padding-top:6px;">
              </router-link>
      </div>
      <div class="videoList">
        <div class="videoItem">
          <img src="../img/beijing.png" alt="" class="videoImg">
          <div class="videoListItem">
            <div class="videoListItemDv">
              <img src="../img/bofangsanjiaoxing.png" alt="">
              <span>13.1万</span>
            </div>
          </div>
        </div>
        <div class="videoItem">
          <img src="../img/beijing.png" alt="" class="videoImg">
          <div class="videoListItem">
            <div class="videoListItemDv">
              <img src="../img/bofangsanjiaoxing.png" alt="">
              <span>13.1万</span>
            </div>
          </div>
        </div>
        <div class="videoItem">
          <img src="../img/beijing.png" alt="" class="videoImg">
          <div class="videoListItem">
            <div class="videoListItemDv">
              <img src="../img/bofangsanjiaoxing.png" alt="">
              <span>13.1万</span>
            </div>
          </div>
        </div>
        <div class="videoItem">
          <img src="../img/beijing.png" alt="" class="videoImg">
          <div class="videoListItem">
            <div class="videoListItemDv">
              <img src="../img/bofangsanjiaoxing.png" alt="">
              <span>13.1万</span>
            </div>
          </div>
        </div>
        <div class="videoItem">
          <img src="../img/beijing.png" alt="" class="videoImg">
          <div class="videoListItem">
            <div class="videoListItemDv">
              <img src="../img/bofangsanjiaoxing.png" alt="">
              <span>13.1万</span>
            </div>
          </div>
        </div>
        <div class="videoItem">
          <img src="../img/beijing.png" alt="" class="videoImg">
          <div class="videoListItem">
            <div class="videoListItemDv">
              <img src="../img/bofangsanjiaoxing.png" alt="">
              <span>13.1万</span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      
    }
  },
  methods: {
    musLib(){
      this.$router.push("/musLib")
    }
  },
}
</script>
<style scoped>
/* 导航 */
  .recommended .nav{
   
    display: flex;
    align-items: center;
    justify-content: space-around;
    font-size: 16px;
    margin-bottom: 10px;
  }
  .recommended>.nav img{
    width: 36px;
  }
  .recommended .router-link-active {
    color: #666;
  }
  .recommended .palyList{
    position: relative;
  }
  .recommended .playItem1,.playItem2{
    position: absolute;
  }
  .recommended .playItem1{
    left: 10px;
  }
  .recommended .playItem2{
    padding-top: 12px;
    right:10px;
  }
  .recommended .itemSpan-1{
    font-size: 30px;
    font-weight:700;
    color: #333;
  }
  .recommended .itemSpan-2{
    font-size: 12px;
  }
  .recommended .itemSpan-3{
    font-size: 18px;
    font-weight:500;
    color: #333;
    padding-left: 14px;
  }
  /* 歌单 */
  .recommended .playLitsItem{
    padding-top: 40px;
    display: flex;
    justify-content: space-around;
    flex-wrap: wrap;
    overflow: hidden;
  }
  .recommended .playLitsItemChild{
    overflow: hidden;
    text-align: left;
    width: 100px;
    height: 142px;
    margin: 5px;
    padding: 4px;
    font-size: 14px;
  }
  .recommended .playLitsItemChild>img{
    border: 1px solid #ececee;
    border-radius: 8px;
    width: 100%;
  }
  /* 视频区域 */
  .recommended .videoList{
    display: flex;
    justify-content: space-around;
    flex-wrap: wrap;
  }
  .recommended .videoListItem{
    display:flex;
    position:absolute;
    position: relative;
    overflow: hidden;
    border-radius: 6px;
    height: 240px;
  }
  .recommended .videoListItemDv{
    display: flex;
    position: absolute;
    align-items: center;
    background-color: rgba(33,33,33,.1);
    z-index: 1;
    color: #fff;
    width: 100%;
    height: 28px;
    bottom: 0px;
  }
  .recommended .videoListItem img{
    width: 20px;
    padding-left: 4px;
  }
  .recommended .videoItem{
    position: relative;
    overflow: hidden;
    width: 170px;
    margin-bottom: 6px;
    border-radius: 6px;
  }
  .recommended .videoImg{
    position: absolute;
    width: 100%;
    left: 0;
  }
</style>
