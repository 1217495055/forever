<template>
  <div class="app-container">
	  <!-- 头部 -->
	  <my-header></my-header>


    <!-- 中间的 路由 router-view 区域 -->
		<transition>
			<router-view></router-view>
		</transition>

	<!-- 尾部 -->
	<my-footer></my-footer>


  </div>
</template>

<script>
// 引入头部和尾部
import header from "./views/header"
import footer from './views/footer'
export default {
	data(){
		return{}
	},
	// 2 注册头部和底部
    components: {
        "my-header":header,
        // 注册
        'my-footer':footer,
    },
}
</script>





<style scoped>

</style>


