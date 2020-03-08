<template>
  <div class="childNav">
    <div class="videoItem">
      <div class="nav">
        <div class="navLits" @click="navClick($event)">
          <span class="click clicked">推荐</span>
          <span class="click ">视频榜</span>
          <span v-for="(item,i) of nav" :key="i" v-text="item" class="click"></span>
        </div>
        <div>
          <img src="../../img/尖括号.png" alt="" class="jkh" @click="clicekNav">
        </div>
      </div>
      <div class="navDet" @click="navDet">
        <span v-for="(item,i) of list" :key="i" v-text="item" class="navDetList"></span>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      a:0
    }
  },
  props:["list","nav"],
  methods: {
    navClick(e){
      var e=e.target;
      var childs=e.parentNode.children;
      for (const item of childs) {
        if(item.nodeName=="SPAN"){
          item.className="click ";
        }
      }
      if(e.nodeName=="SPAN"){
        e.className += 'clicked';
      };
    },
    clicekNav(e){
      var e=e.target;
      var parentE=e.parentNode;
      var parentEE=parentE.parentNode;
      var parentEEE=parentEE.nextElementSibling;
      if(this.a==0){
        parentEEE.className += ' click';
        this.a=1;
      }else if(this.a==1){
        parentEEE.className="navDet"
        this.a=0;
      }
    },
    navDet(e){
      var e=e.target;
      var childs=e.parentNode.children;
      for (const item of childs) {
        if(item.nodeName=="SPAN"){
          item.className="navDetList ";
        }
      }
      if(e.nodeName=="SPAN"){
        e.className+= 'clicked';
      };
      if(e.nodeName=="SPAN"){
        var html=e.innerHTML;
        var part=e.parentNode.previousElementSibling.firstElementChild
        var model=part.lastElementChild;
        var childs=part.children;
        for (const item of childs) {
          if(item.nodeName=="SPAN"){
            item.className="click ";
          }
        }
        model.innerHTML=html;
        model.className="click clicked";
      };
    }
  },
}
</script>
<style scoped>
   .childNav .jkh{
    width: 20px;
    transform: rotate(90deg);
    margin-right: 16px;
  }
  
  .childNav .nav{
    display: flex;
    position: relative;
    padding-bottom: 10px;
  }
  .childNav .nav img{
    position: absolute;
    right: 0px;
    top:3px;
  }
  .childNav .navLits{
    display: flex;
    justify-content: space-around;
    align-items: center;
    margin-left: 15px;
    overflow: hidden;
  }
  .childNav .click{
    border-radius: 14px;
    padding: 4px 14px;
    color:#999;
  }
  .childNav .navLits .clicked{
    color: #333;
    font-weight:600;
    background-color:rgba(99,99,99, .2);
  }
  .childNav .navDet{
    padding-top: 20px;
    display: flex;
    flex-wrap: wrap;
    border-bottom-left-radius: 24px;
    border-bottom-right-radius: 24px;
    height: 0;
    background-color: #f9f9f9;
    opacity: 0;
    position: absolute;
    left: -20px;
  }
  .childNav .navDet.click{
    height: 270px;
    position: absolute;
    z-index: 999;
    opacity: 1;
  }
   .childNav .navDetList{
     margin-left: 5px;
     border-radius: 14px;
     padding: 4px 14px;
     color:#999;
     height: 20px;
  }
  .childNav .navDetList.clicked{
    color: #333;
    font-weight:600;
    background-color:rgba(99,99,99, .2);
  };
</style>