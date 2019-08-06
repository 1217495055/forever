<template>
    <div>
        <header class="my-header clearfix">
			<i class="mui-icon mui-icon-back f-l"></i>
			<p>购物车</p>
		</header>
		<div class="nonecart hide">
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
		<div class="cart-details">
			<div class="detail-content clealfix">
				<input type="checkbox" class="f-l"/>
				<img src="../img/m_home_use_birthday.png" class="f-l"/>
				<div class="f-l">
					<p class="title">[鲜花]一往情深</p>
					<p class="count">数量
						<span>
							<i>#</i>
							<i>1</i>
							<i>+</i>
						</span>
					</p>
					<p class="price">238.00</p>
				</div>
			</div>
		</div>
		<div class="recommend">
			<p class="recommend-title">买了该商品的还买了<span>巧克力/花瓶</span></p>
			<div class="commodity-box">
				<div class="commodity clearfix">
					<div class="recommend-commodity">
						<img src="../img/9.jpg"/>
						<p>天使之恋</p>
						<p>233.00</p>
					</div>
					<div class="recommend-commodity">
						<img src="../img/9.jpg"/>
						<p>天使之恋</p>
						<p>233.00</p>
					</div>
					<div class="recommend-commodity">
						<img src="../img/9.jpg"/>
						<p>天使之恋</p>
						<p>233.00</p>
					</div>
					<div class="recommend-commodity">
						<img src="../img/9.jpg"/>
						<p>天使之恋</p>
						<p>233.00</p>
					</div>
				</div>
			</div>
		</div>
		<div class="payment clearfix">
			<p class="total f-l">总价：<span>238.00</span></p>
			<p class="f-r payment-btn">去结算(<span>1</span>)</p>
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
.cart-details{
	margin-top: 2rem;
	
	background: #fff;
}
.cart-details .detail-content{
	height: 4.5rem;
}
.cart-details .detail-content>input{
	width: .8rem;
	height: .8rem;
    outline: none;
    margin: 2rem 0 0 .6rem;
}
.cart-details .detail-content>img{
	margin:.3rem .6rem ;
	width: 3.6rem;
}
.detail-content .title{
	margin-top: .3rem ;
}
.detail-content .count{
	font-size: 0.56rem;
	line-height: 1.2rem;
}
p.count>span{
	display: inline-block;
	width: 4.5rem;
    height: 1.2rem;
    margin-top: .6rem;
    border: 1px solid #bbb; 
}
.count>span>i{
	display: inline-block;
	height: 1.2rem;
	border-right:1px solid #bbb ;
}
.count>span>i:first-child{
	width: 22%;
}
.count>span>i:last-child{
	width: 19%;
	border: 0;
}
.count>span>i:nth-child(2){
	width: 49%;
	text-align: center;
}
.detail-content .price{
	color:#EE9900;
	margin-top: .3rem;
}
.cart-details+.recommend{
	width: 100%;
	margin: 1rem 0 3rem 0;
	background: #fff;
	font-size: 0.4rem;
	line-height: 1rem;
	padding: .2rem 2%;
}
.recommend .recommend-title{
	font: .36rem;
}
.recommend .recommend-title>span{
	display: inline-block;
	width: 35%;
	margin-left: 2%;
	text-align: center;
	border-left: 1px solid #000000;
}
.recommend .commodity-box{
	width: 100%;
	margin-top: .2rem;
	overflow-y: scroll;
}
.commodity-box .commodity{
	width: 240%;
}
.commodity .recommend-commodity{
	width: 10%;
	float: left;
	text-align: center;
	line-height: 1rem;
	margin-left: .6rem;
	padding-bottom: .3rem;
}
.recommend-commodity img{
	width: 100%;
}
/* <div class="payment clearfix">
			<p class="total f-l">总价<span>238.00</span></p>
			<p class="f-r payment-btn">去结算(<span>1</span>)</p>
</div> */
.payment{
	width: 100%;
	position: fixed;
	bottom: 0;
	left: 0;
	height: 2rem;
	line-height: 2rem;
	font-size: .46rem;
	background: #fff;
}
.payment .total{
	margin-left: 5%;
}
.payment .total>span{
	color: #EE9900;	
}
.payment .payment-btn{
	width: 28%;
	background: #EE9900;
	color: #fff;
	text-align: center;

}
</style>
