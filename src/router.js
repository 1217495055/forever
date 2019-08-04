import Vue from 'vue'
import Router from 'vue-router'


import Index from './views/index'
import Classfy from './views/Classfy'
import login from './views/login'
import register from './views/register'
import product from './views/product'
import qq from './views/qq'
import zhifubao from './views/zhifubao'
import cart from './views/cart'
import detail from './views/detail'
import detailbuttom from './views/detail_buttom'
Vue.use(Router)

export default new Router({
  routes: [
    {path: '/',component: Index},
    {path:'/Classfy',component:Classfy},
    {path:'/login',component:login},
    {path:'/product',component:product},
    {path:'/register',component:register},
    {path:'/login/qq',component:qq},
    {path:'/login/zhifubao',component:zhifubao},
    {path:'/cart',component:cart,props:true},
    {path:'/detail',component:detail,props:true},
    {path:'/detailbuttom',component:detailbuttom,props:true},
  ],
  linkActiveClass:'mui-active'
})
