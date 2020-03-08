<template>
    <div :class="focused?d1:d2"></div>
</template>
<script>
export default {
  props:["focused","d1","d2"],
}
</script>
<style scoped>
   .d1{
  width: 15px;
  border: 2.5px solid #045bb4;
  margin: auto;
  }
.d2{
  display: none;
}
</style>
