import Vue from 'vue'
import Router from 'vue-router'


import Index from './views/index'
import Classfy from './views/Classfy'
import login from './views/login'
Vue.use(Router)

export default new Router({
  routes: [
    {path: '/',component: Index},
    {path:'/Classfy',component:Classfy},
    {path:'/login',component:login},
  ],
  linkActiveClass:'mui-active'
})
