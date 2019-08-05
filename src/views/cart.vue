<template>
    <div>
        <header class="my-header clearfix">
			<i class="mui-icon mui-icon-back f-l"></i>
			<p>购物车</p>
		</header>
		<div class="nonecart">
			<div class="none-bg">
				<img src="../img/135211231.png"/>
				<p>这里什么都没有哦!</p>
			</div>
			<div class="recommend">
				<p class="tj-title">猜你喜欢</p>
			</div>
			<showlist></showlist>
			<my-recommend></my-recommend>
		</div>
    </div>  
</template>
<script>
 import showlist from "./showlist"
import recommend from './recommend'
export default {
	components: {
		"showlist":showlist,
		"my-recommend":recommend,
    },
}
</script>
<style scoped>
.my-header{
	width: 100%;
	position: fixed;
	left: 0;
	top: 0;
    padding: 0 0.64rem;
    line-height: 2rem;
    background: #fff;
    box-sizing: border-box;
    box-shadow:  0 0 4px #E9ECF0;
}
.my-header i{
    width: 10%;
    line-height: 2rem;
    font-size: 1.2rem;
}
.my-header p{
    float: left;
    width: 80%;
    text-align: center;
    font-size: 0.7rem;
}
div.none-bg{
	margin:2rem 0 .4rem 0;
	text-align: center;
	height: 7.5rem;
	padding-top: 1.8rem;
	background: #fff;
}
.nonecart .none-bg>img{
	width: 3.3rem;
    height: 3.3rem;
}
.none-bg~.recommend{
	padding: .4rem 2%;
	background: #fff;
}
.recommend p.tj-title{
	margin-left: .6rem;
	font-size: 0.56rem;
}

</style>
