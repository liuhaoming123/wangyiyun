<template>
  <div>
    <titlefont :list="list"
    :sImg="require('../../assets/ss1.png')"
    :gImg="require('../../assets/my1.png')"
    ></titlefont>
  </div>
</template>
<script>
import titleFont from './titleFont.vue'
export default {
  data(){
    return {
      list:[{name:"音乐",isSelect:true,isc:"b"},{name:"动态",isSelect:false,isc:"a"},{name:"关注",isSelect:false,isc:"a"},{name:"消息",isSelect:false,isc:"a"}]
    }
  },
  components:{
    "titlefont":titleFont
  }
}
</script>
<style scoped>
  
</style>
