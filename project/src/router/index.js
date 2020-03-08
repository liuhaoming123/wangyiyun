import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import ex from '../components/ex.vue'
import Login from '../components/Login.vue'
import Carousel from '../components/Carousel.vue'
import Live from '../components/kugou/Live.vue'
// import Middleb from '../components/kugou/common/Middleb.vue'
// import Middled from '../components/kugou/common/Middled.vue'
Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'HelloWorld',
      component: HelloWorld
    },
    {
      path:'/ex',
      component:ex
    },
    {
      path:'/Login',
      component:Login
    },
    {
      path:'/Carousel',
      component:Carousel
    },
    {path:'/Live',component:Live},
    // {path:'/Middleb',component:Middleb},
    // {path:'/Middled',component:Middled},
  ]
})
