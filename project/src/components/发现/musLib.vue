<template>
  <div class="musLib">
    <div class="musLibWrap">
      <!-- 顶部导航 -->
      <div class="libHead">
        <div class="backIdx" @click="banck">
          <img src="./img/尖括号.png" alt="">
          <span>乐库</span>
        </div>
        <div>
          <img src="./img/sousuo.png" alt="" class="search">
        </div>
      </div>
      <div class="nav" id="par">
        <span @click="model('1')" class="navList ischeck" name="1">推荐</span>
        <span @click="model('2')" class="navList" name="2">排行</span>
        <span @click="model('3')" class="navList" name="3">歌手</span>
        <span @click="model('4')" class="navList" name="4">分类</span>
      </div>
          
      <div class="bar">
        <div id="1" class="yc isShow">
          <bannerLib></bannerLib>
          <span class="bar1">
            <div>
              <img src="./img/default.png" alt="">
              <div>专区</div>
            </div>
            <div>
              <img src="./img/headphones.png" alt="">
              <div>演出</div>
            </div>
            <div>
              <img src="./img/at.png" alt="">
              <div>节目</div>
            </div>
            <div>
              <img src="./img/layers.png" alt="">
              <div>专题</div>
            </div>
          </span>
          <child-lib2></child-lib2>
          <child-lib></child-lib>
          <child-lib3></child-lib3>
        </div>
        <div id="2" class="yc">
          排行
        </div>
        <div id="3" class="yc">
          歌手
        </div>
        <div id="4" class="yc">
          分类
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import bannerLib from './components/musLib/bannerLib'
import childLib from './components/musLib/childLib'
import childLib2 from './components/musLib/childLib2'
import childLib3 from './components/musLib/childLib3'
export default {
  data() {
    return {
      active:"rec"
    }
  },
  components:{
    bannerLib,
    childLib,
    childLib2,
    childLib3,
  },
  methods: {
    banck(){//返回发现首页
      this.$router.push("/index")
    },
    model(i){
      //上面导航
      var show1=document.getElementsByName(i)[0]
      var par1=show1.parentNode;
      var childs1=par1.children;
      //下面内容
      var show2=document.getElementById(i);
      var par2=show2.parentNode;
      var childs2=par2.children;
      //上部导航
      for (const item of childs2) {
        item.className="yc "
      };
      //下部内容
      for (const item of childs1) {
        item.className="navList "
      };

      show1.className="navList ischeck"
      show2.className="yc isShow"
      
    }
  },
}
</script>
<style scoped>
  .musLib{
    overflow: hidden;
    color: #666;
    font-size: 14px;
    position: relative;
  }
  .musLib .musLibWrap{
    overflow: auto; 
    position: relative;
  }
  
  .musLib .libHead{
    position: fixed;
    width: 100%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    z-index: 20;
    background-color: #fff;
    top: 0;
  }
  .musLib .backIdx{
    display: flex;
    align-items: center;
    font-size: 22px;
  }
  .musLib .backIdx img{
    width: 40px;
    transform:rotate(180deg);
    padding-left: 6px;
  }
  .musLib .search{
    width: 30px;
    padding-right: 20px;
  }
  .musLib .yc{
    overflow: hidden;
    width: 0;
    left: 0;
  }
  .musLib .isShow{
    width: 100%;
    margin: auto;
  }
  .musLib .nav{
    background-color: #fff;
    width: 100%;
    font-size: 18px;
    display: flex;
    justify-content: space-around;
    color: #333;
    position: fixed;
    z-index: 10;
    padding-top: 10px;
    margin-top: 30px;
  }
  .musLib .bar{
    display: flex;
    justify-content: space-between;
    margin-top: 100px;
  }
  .musLib .navList{
    padding: 4px 0;
  }
  .musLib .ischeck{
    border-bottom:2px solid #1296db;
  }
  .musLib  .bar1{
    display: flex;
    justify-content: space-around;
    margin-top: 20px;
  }
  .musLib  .bar1 img{
    width: 30px;
  }
</style>