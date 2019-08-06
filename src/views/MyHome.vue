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
				<div class="user-box hide">
					<div class="user-photo f-l">
						<img src="../img/m_home_category_new.png"/>
					</div>
					<div class="user-details f-r">
						<p>兔子</p>
						<span class="vip">注册会员</span>
					</div>
				</div>
            </div>
		</div>
		<div class="myhome-content">
			<div class="content-head clearfix">
				<span class="f-l">我的订单</span>
				<span class="f-r">全部订单&gt;</span>
			</div>
            <ul class="content-items">
				<li class="content-item">
					<img src="../img/4.png" />
					<p>待付款</p>
				</li>
				<li class="content-item">
					<img src="../img/4.png" />
					<p>待付款</p>
				</li>
				<li class="content-item">
					<img src="../img/4.png" />
					<p>待付款</p>
				</li>
			</ul>
		</div>
        <div class="myhome-content">
			<ul class="content-items border-b">
				<li class="content-item">
					<img src="../img/4.png" />
					<p>优惠券</p>
				</li>
				<li class="content-item">
					<img src="../img/4.png" />
					<p>权益卡</p>
				</li>
				<li class="content-item">
					<img src="../img/4.png" />
					<p>余额</p>
				</li>
				<li class="content-item">
					<img src="../img/4.png" />
					<p>会员积分</p>
				</li>
			</ul>
			<ul class="content-items">
				<li class="content-item">
					<img src="../img/4.png" />
					<p>优惠券</p>
				</li>
				<li class="content-item">
					<img src="../img/4.png" />
					<p>权益卡</p>
				</li>
				<li class="content-item">
					<img src="../img/4.png" />
					<p>余额</p>
				</li>
				<li class="content-item">
					<img src="../img/4.png" />
					<p>会员积分</p>
				</li>
			</ul>
		</div>
		<div class="myhome-content">
			<ul class="content-items">
				<li class="content-item">
					<img src="../img/4.png" />
					<p>联系客服</p>
				</li>
				<li class="content-item">
					<img src="../img/4.png" />
					<p>帮组中心</p>
				</li>
				<li class="content-item">
					<img src="../img/4.png" />
					<p>关于花礼</p>
				</li>
				<li class="content-item">
					<img src="../img/4.png" />
					<p>设置</p>
				</li>
			</ul>
		</div>
    </div>
</template>
<style scoped>
    
    .my-header{
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        padding: 0 0.4rem;
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
    .myhome-top{
        margin-top:2rem; 
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
        margin: .4rem 2%;
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
     ul.content-items{
   		display: flex;
        justify-content: space-between;
        align-items: center;
   		font-size: 0;
   		width: 92%;
   		margin: 0.34rem auto;
   }
    ul.content-items>li.content-item{
        width: 3.6rem;
    }
	.content-item>img{
		width: 40%;
		margin-left: 30%;
	}
	.content-item p{
		margin-top: 0.26rem;
		text-align: center;
		font-size: 0.46rem;
	}
	.border-b{
		padding-bottom: .26rem;
		margin-bottom: .16rem;
		border-bottom: 1px solid #ddd;
	}
    .nologin~.user-box{
		margin-top: .5rem;
	}
	.nologin~.user-box>div{
		width: 48%;
		font-size: 0.54rem;
		color: #fff;
	}
	.user-box .user-photo>img{
		width: 2.5rem;
		height: 2.5rem;
		border-radius: 50%;
	}
	.user-box .user-photo{
		text-align: right;
	}
	.user-details{
		line-height: 1.1rem;
	}
	.user-details>span.vip{
		width: 4rem;
		background: #CF2D28;
		border-radius: 4px;
		color: #fff;
		padding: 0.15rem;
		font-size: 0.48rem;
		text-align: center;
	}

</style>