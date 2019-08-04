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
<<<<<<< HEAD
import detail from './views/detail'
import detailbuttom from './views/detail_buttom'
=======
import MyHome from './views/MyHome.vue'

>>>>>>> 21a22ada9b43fe6626b4911ff8c00d5d18de7385
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
<<<<<<< HEAD
    {path:'/cart',component:cart,props:true},
    {path:'/detail',component:detail,props:true},
    {path:'/detailbuttom',component:detailbuttom,props:true},
=======
    {path:'/cart',component:cart},
    {path:'/MyHome',component:MyHome},
>>>>>>> 21a22ada9b43fe6626b4911ff8c00d5d18de7385
  ],
  linkActiveClass:'mui-active'
})
