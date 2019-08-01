import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'

// 导入axios模块
import axios from 'axios'
// 配置axios 基础路径
axios.defaults.baseURL='http://127.0.0.1:3000/user/';
// 配置axios保存session信息
axios.defaults.withCredentials=true;
// 由于axios不支持use，将axios添加到原型对象中
Vue.prototype.axios = axios;

// 引入组件库
import MintUI from "mint-ui" 
// 单独引入样式文件  
import "mint-ui/lib/style.css"   

Vue.config.productionTip = false

// 引入字体图标库
import "./font/iconfont.css"

// 引入字体图标库
import "./font/icon1/iconfont.css"
// 将 MitUi 注册给 Vue 实例
Vue.use(MintUI)

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
