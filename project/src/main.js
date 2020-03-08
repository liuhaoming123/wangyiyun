// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'  //引入vue实例对象
import App from './App'  //引入根组件
import router from './router' //引入路由模块
import Mintui from 'mint-ui' //引入mint-ui组件
import 'mint-ui/lib/style.css' //然后单独引入mint-uicss
Vue.use(Mintui)  //把mint-ui注册进vue实例对象
import axios from 'axios' //由于要发送ajax请求,引入axios库
axios.defaults.baseURL="http://127.0.0.1:4000/"//配置axios的基础路径
axios.defaults.withCredentials="true"//保存session数据
Vue.prototype.axios=axios; //注册进vue原型对象中
// import './font/iconfont.css' 如果要引入图标就这种格式
Vue.config.productionTip = false

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
})
