<template>
  <div class="app-container">
	  <!-- 头部 -->
	  <!-- <my-header></my-header> -->


    <!-- 中间的 路由 router-view 区域 -->
		<transition>
			<router-view></router-view>
		</transition>

	<!-- 尾部 -->
	<!-- <my-footer></my-footer> -->


  </div>
</template>

<script>
// 引入头部和尾部
// import header from "./views/header"
// import footer from './views/footer'
export default {
	data(){
		return{}
	},
	// // 2 注册头部和底部
    // components: {
    //     "my-header":header,
    //     // 注册
    //     'my-footer':footer,
    // },
}
</script>




<style>
    /* 当前组件专有的样式内容 */
	@import url('./lib/mui/css/mui.min.css');
	@import url('./lib/mui/css/icons-extra.css');
	@import url('../public/css/reset.css');
.app-container {
  padding-top: 40px;
	padding-bottom: 50px;
  overflow-x: hidden;
}

.v-enter {
  opacity: 0;
  transform: translateX(100%);
}




