<template>
  <div>
    <titlefont :list="list"></titlefont>
  </div>
</template>
<script>
import titleFont from './titleFont1.vue'
export default {
  data(){
    return {
      list:[{name:"全部",isSelect:true,isc:"b"},{name:"评论",isSelect:false,isc:"a"},{name:"k歌",isSelect:false,isc:"a"},{name:"视频",isSelect:false,isc:"a"}]
    }
  },
  components:{
    "titlefont":titleFont
  }
}
</script>
<style>

</style>
