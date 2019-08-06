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


// 引入post请求需要用到的
import qs from 'qs'
Vue.prototype.qs = qs;


// 引入vuex第三方模块
import Vuex from 'vuex'

// 注册Vuex
Vue.use(Vuex)

// 创建Vuex存储对象
var store1 = new Vuex.Store({
  // 共享数据
  state:{cartCount:0},
  // 添加修改数据函数
  mutations:{
    increment(state){   //购物车数量+1
      state.cartCount++;   
    },
    clear(state){   //清除购物车
      state.cartCount=0;   //购物车数量清零
    }
  },
  // 添加获取数据函数
  getters:{
    getCartCount(state){
      return state.cartCount;
    }
  },
  // 添加异步函数
  actions:{}
})

// 将实例对象添加Vuex中

new Vue({
  router,
  store,
  render: h => h(App),
  store1,
}).$mount('#app')
