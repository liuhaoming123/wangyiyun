<template>
  <div>
      <h3>ex组件</h3>
      <button @click="dj">点击</button>
  </div>
</template>
<script>
export default {
  //  name:'ex'
  data(){
    return {
      pno:0
    }
  },
  methods:{
   dj(){
    this.pno++;
    var obj = {pno:this.pno,pageSize:20}
    this.axios.get("Sona",{params:obj}).then(res=>{
     console.log(res.data)
    })
  }
   }
}
</script>
<style>

</style>
