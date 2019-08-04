<template>
    <div>
        <header class="my-header clearfix">
			<i class="mui-icon mui-icon-back f-l"></i>
			<p>个人中心</p>
		</header>
		<div class="myhome-top">
			<div class="bg-box">
				<div class="nologin">
					<p class="title">欢迎来到花礼网</p>
					<button>登录/注册</button>
				</div>
            </div>
		</div>
		<div class="myhome-content">
			<div class="content-head clearfix">
				<span class="f-l">我的订单</span>
				<span class="f-r">全部订单&gt;</span>
			</div>
		</div>
    </div>
</template>
<style scoped>
    
    .my-header{
        padding: 0 0.64rem;
        line-height: 2rem;
        background: #fff;
        box-sizing: border-box;
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
    .myhome-top .bg-box{
        width: 100%;
        height: 5.2rem;
        padding-top: 0.4rem;
        background: url(../img/backgroundv3.png) no-repeat;
        background-size: 100% 10.4rem;
    }
    .nologin{
        text-align: center;
    }
    .nologin p.title{
        margin-bottom: 0.6rem;
        font-size: 0.8rem;
        color: #fff;
    }
    .nologin button{
        width: 5.8rem;
        padding: 0.48rem;
        background: #fff;
        color:#EC971F;
        font-size: 0.6rem;
        border-radius:6px;
        border: 0;
    }
    .myhome-content{
        width: 96%;
        margin: 1rem 2%;
        background: #fff;
        border-radius:6px; 
        box-sizing: border-box;
        padding:0.25rem 4%;
        font-size: 0.56rem;
        padding: 0.5rem 0;
    }
   .content-head{
        width: 92%;
        margin: 0 auto;
        border-bottom:1px solid #ccc;
        line-height: 1.5rem;
    }


</style>