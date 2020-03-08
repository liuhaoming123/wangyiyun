<template>
  <div class="radio">
    <banner></banner>
    <radio-nav class="radio-nav"></radio-nav>
    <radio-class></radio-class>
    <rec-day></rec-day>
    <child1></child1>
    <child-all v-for="(item,i) of list" :key="i" :name="item.name" :arr="item.val"></child-all>
    <child-end :list2="list2"></child-end>
  </div>
</template>
<script>
import banner from './radio/radioBanner'
import  radioNav from  './radio/radioNav'
import  radioClass from  './radio/radioClass'
import  RecDay from  './radio/radioRecDay'
import  child1 from  './radio/child1'
import  childAll from  './radio/childAll'
import   childEnd from  './radio/childEnd.vue'
export default {
  data() {
    return {
      list:[
        {
          name:"主播电台",
          val:[
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"5万",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"来吧!!!"},
            {img:"ta.jpeg",play:"1000",intr:"我的活泼IG婆娘个"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"}
          ]
        },
        {
          name:"有声小说",
          val:[
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
          ]
        },
        {
          name:"相声曲艺",
          val:[
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"}
          ]
        },
        {
          name:"儿童天地",
          val:[
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"}
          ]
        },
        {
          name:"助眠解压",
          val:[
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"}
          ]
        },
        {
          name:"创作翻唱",
          val:[
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"}
          ]
        },
        {
          name:"DJ|电音",
          val:[
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"}
          ]
        },
        {
          name:"自我充电",
          val:[
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"}
          ]
        },
        {
          name:"历史人文",
          val:[
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"}
          ]
        },
        {
          name:"听见综艺",
          val:[
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"}
          ]
        },
        {
          name:"中小学必备",
          val:[
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"},
            {img:"ta.jpeg",play:"1999",intr:"我当拘灵使的那些年"}
          ]
        }
        
      ],
      list2:[]
    }
  },
  components:{
    banner,
    radioNav,
    radioClass,
    RecDay,
    child1,
    childAll,
    childEnd
  },
  methods: {
    list1(){
      for (let i = 0; i <this.list.length; i++) {
        this.list2[i]=this.list[i].name
      }
    }
  },
  created() {
    this.list1();
  },
}
</script>
<style scoped>
  .radio{
    font: 12px;
    color: #333;
  }
</style>