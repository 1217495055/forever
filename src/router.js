import Vue from 'vue'
import Router from 'vue-router'


import Index from './views/index'
import Classfy from './views/Classfy'
import login from './views/login'
import product from './views/product'
Vue.use(Router)

export default new Router({
  routes: [
    {path: '/',component: Index},
    {path:'/Classfy',component:Classfy},
    {path:'/login',component:login},
    {path:'/product',component:product},
  ],
  linkActiveClass:'mui-active'
})
