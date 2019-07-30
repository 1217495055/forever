import Vue from 'vue'
import Router from 'vue-router'
import Classfy from './views/Classfy.vue'
import Index from './views/index.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      component: Index
    },
    {
      path:'/Classfy',
      component:Classfy
    },
  ],
  linkActiveClass:'mui-active'
})
