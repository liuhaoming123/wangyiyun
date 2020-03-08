<template>
  <div>
    <listone></listone>
    <listtoo></listtoo>
    <listthree></listthree>
    <listfour></listfour>
  </div>
</template>
<script>
import list1 from "./list1.vue"
import list2 from "./list2.vue"
import list3 from "./list3.vue"
import listfour from "./listfour.vue"
export default {
  components:{
     "listone":list1,
     "listtoo":list2,
     "listthree":list3,
     "listfour":listfour
    }    
}
</script>
<style scoped>
   *{
     margin: 0;
     padding: 0;
   }
</style>
