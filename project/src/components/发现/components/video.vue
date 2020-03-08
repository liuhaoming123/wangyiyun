<template>
  <div class="video">
    <child2 :nav="nav" :list="list" style="position:fixed;
		top:30px;width:100%;margin-top:16px;z-index:1;background-color:#fff;padding-top: 10px; "></child2>
    <div class="child-video">
      <child-video v-for="(item,i) of list" :key="i" class="child-1"></child-video>
    </div>
    <mt-button >加载更多</mt-button>
    <mt-button @click="back">回到顶部</mt-button>
  </div>
</template>
<script>
import childVideo from './video/childVideo';
import child2 from './video/child2';
export default {
  data() {
    return {
      nav:["抗击肺炎","小姐姐"],
      list:["抗击肺炎","小姐姐","假面骑士","奥特曼","账号","音乐","找回","理解","郭涛","视频"],
      pro:0,
    }
  },
  components:{
    childVideo,
    child2
  },
  methods: {
    // loadMore(){//加载
    //   this.pro++
    //   // 创建变量保存url
    //   var url="/video"
    //   // 创建变量保存起始页和显示页数
    //   var obj={
    //     pno:this.pro,
    //     pageSize:10
    //   }
    //   // 发送axis请求
    //   this.axios.get(url,{
    //     params:obj
    //   }).then(res => {
    //     var rws=this.list.concat(res.data.data)
    //     this.list=rws;
    //   })
    // },
    back(){//返回顶部
      var timer = setInterval(function(){
            let osTop = document.documentElement.scrollTop || document.body.scrollTop;
            let ispeed = Math.floor(-osTop / 5); 
            document.documentElement.scrollTop = document.body.scrollTop = osTop + ispeed;
            this.isTop = true;
            if(osTop === 0){
              clearInterval(timer);
            }
          },15)
    },
  },
  created() {//初始加载
    // this.loadMore();
  },
}
</script>
<style scoped>
  .video{
    position: relative;
  }
  .video .child-video{
    margin-top: 20px;
  }
  .video .child-1{
    margin: 30px 0;
  }
</style>