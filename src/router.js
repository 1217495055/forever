import Vue from 'vue'
import Router from 'vue-router'


import Index from './views/index'
import Classfy from './views/Classfy'
import login from './views/login'
import register from './views/register'
import product from './views/product'
import qq from './views/qq'
import zhifubao from './views/zhifubao'
// import cart from './views/cart'
import detail from './views/detail'
import detailbuttom from './views/detail_buttom'
import why from './views/whyselect'
import reply from './views/auto_reply'
import province from './views/province'
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
    // {path:'/cart',component:cart,props:true},
    {path:'/detail/:id',component:detail,props:true},
    {path:'/detailbuttom',component:detailbuttom,props:true},
    {path:'/why',component:why},
    {path:'/reply',component:reply},
    {path:'/province',component:province},
    {path:'/MyHome',component:MyHome},
    {path:'/Cart',component:Cart},
  ],
  linkActiveClass:'mui-active'
})
