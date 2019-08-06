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
methods: {
		(function(){
			//rem布局
			//1.获取元素 html，注意getElementsByTagName返回的是元素的集
			var html=document.getElementsByTagName('html');
			//2.获取用户设配物理宽度
			var width=window.screen.width;
			//设计图以I6尺寸的话，我是/15，然后1rem=25px;看个人喜好
			html[0].style.fontSize=width/15+'px';
		})()
	}
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




<style scoped>
/* .app-container{
	background-color: #fff;
} */
</style>





