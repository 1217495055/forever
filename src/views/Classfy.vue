<template>
    <div>
        <div class="classify-header clearfix">
	        <span class="f-l mui-icon mui-icon-back"></span>
	        <div class="search-box f-r">
	        	<span class="mui-icon mui-icon-search"></span>
	        	<input type="text" placeholder="请输入搜索内容">
	        </div>
	    </div>
	    <div class="clearfix p-r">
	    	<div class="classify-menu">
				<ul>
					<li @click="goto" data-to="flower1">热门推荐</li>
					<li @click="goto" data-to="flower2">鲜花</li>
					<li @click="goto" data-to="flower3">永生花</li>
					<li @click="goto" data-to="flower4">蛋糕</li>
					<li @click="goto" data-to="flower5">巧克力</li>
					<li @click="goto" data-to="flower6">特色礼品</li>
					<li @click="goto" data-to="flower7">礼篮</li>
					<li @click="goto" data-to="flower8">绿植花卉</li>
				</ul>
			</div>
			
			<div class="menu-content p-a">
				<div class="details-list" id="tab">
					<ul id="flower1">
						<a href="javascript:;"></a>
						<li class="details-item">
							<a href="javascript:;">
								<img src="../img/m_home_use_birthday.png"/>
								<span>鲜花</span>
							</a>
						</li>
						<li class="details-item">
							<a href="javascript:;">
								<img src="../img/m_home_use_birthday.png"/>
								<span>永生花</span>
							</a>
						</li>
						<li class="details-item">
							<a href="javascript:;">
								<img src="../img/m_home_use_birthday.png"/>
								<span>蛋糕</span>
							</a>
						</li>
						<li class="details-item">
							<a href="javascript:;">
								<img src="../img/m_home_use_birthday.png"/>
								<span>巧克力</span>
							</a>
						</li>
						<li class="details-item">
							<a href="javascript:;">
								<img src="../img/m_home_use_birthday.png"/>
								<span>特色礼品</span>
							</a>
						</li>
						<li class="details-item">
							<a href="javascript:;">
								<img src="../img/m_home_use_birthday.png"/>
								<span>礼篮</span>
							</a>
						</li>
						<li class="details-item">
							<a href="javascript:;">
								<img src="../img/m_home_use_birthday.png"/>
								<span>绿植花卉</span>
							</a>
						</li>
						<li class="details-item">
							<a href="javascript:;">
								<img src="../img/m_home_use_birthday.png"/>
								<span>企业定制</span>
							</a>
						</li>
						
					</ul>	
					<ul id="flower2">
						<a href="javascript:;"></a>
						<div class="nav-title">
							<span>鲜花</span>
							<span class="f-r">鲜花排行榜&gt;</span>
						</div>
						<li class="details-item">
							<a href="javascript:;">
								<img src="../img/m_home_use_birthday.png"/>
								<span>全部</span>
							</a>
						</li>
						<li class="details-item">
							<a href="javascript:;">
								<img src="../img/m_home_use_birthday.png"/>
								<span>爱情鲜花</span>
							</a>
						</li>
						<li class="details-item">
							<a href="javascript:;">
								<img src="../img/m_home_use_birthday.png"/>
								<span>老师长辈</span>
							</a>
						</li>
					</ul>
					<ul id="flower3">
						<a href="javascript:;"></a>
						<div class="nav-title">
							<span>永生花</span>
							<span class="f-r">永生花排行榜&gt;</span>
						</div>
						<li class="details-item">
							<a href="javascript:;">
								<img src="../img/m_home_use_birthday.png"/>
								<span>全部</span>
							</a>
						</li>
						<li class="details-item">
							<a href="javascript:;">
								<img src="../img/m_home_use_birthday.png"/>
								<span>爱情鲜花</span>
							</a>
						</li>
						<li class="details-item">
							<a href="javascript:;">
								<img src="../img/m_home_use_birthday.png"/>
								<span>老师长辈</span>
							</a>
						</li>
					</ul>
					<ul id="flower4">
						<a href="javascript:;"></a>
						<div class="nav-title">
							<span>精选品牌蛋糕</span>
						</div>
						<li class="details-item diamonds">
							<a href="javascript:;">
								<img src="../img/m_category_cake_ganso.jpg"/>
							</a>
						</li>
						<li class="details-item diamonds">
							<a href="javascript:;">
								<img src="../img/m_category_cake_ganso.jpg"/>
							</a>
						</li>
						<li class="details-item diamonds">
							<a href="javascript:;">
								<img src="../img/m_category_cake_ganso.jpg"/>
							</a>
						</li>
					</ul>
					<ul id="flower5">
						<a href="javascript:;"></a>
						<div class="nav-title">
							<span>巧克力</span>
							<span class="f-r">巧克力排行榜&gt;</span>
						</div>
						<li class="details-item">
							<a href="javascript:;">
								<img src="../img/m_home_use_birthday.png"/>
								<span>全部</span>
							</a>
						</li>
						<li class="details-item">
							<a href="javascript:;">
								<img src="../img/m_home_use_birthday.png"/>
								<span>爱情鲜花</span>
							</a>
						</li>
						<li class="details-item">
							<a href="javascript:;">
								<img src="../img/m_home_use_birthday.png"/>
								<span>老师长辈</span>
							</a>
						</li>
					</ul>
					<ul id="flower6">
						<a href="javascript:;"></a>
						<div class="nav-title border-n">
							<ul class="recommend ">
								<li><p>礼品上新</p></li>
								<li><p>施华洛世奇</p></li>
								<li><p>hellokitty</p></li>
							</ul>
						</div>
						<div class="nav-title">
							<span>巧克力</span>
							<span class="f-r">巧克力排行榜&gt;</span>
						</div>
						<li class="details-item">
							<a href="javascript:;">
								<img src="../img/m_home_use_birthday.png"/>
								<span>全部</span>
							</a>
						</li>
						<li class="details-item">
							<a href="javascript:;">
								<img src="../img/m_home_use_birthday.png"/>
								<span>爱情鲜花</span>
							</a>
						</li>
						<li class="details-item">
							<a href="javascript:;">
								<img src="../img/m_home_use_birthday.png"/>
								<span>老师长辈</span>
							</a>
						</li>
					</ul>
					<ul id="flower7">
						<a href="javascript:;"></a>
						<div class="nav-title">
							<span>礼篮</span>
						</div>
						<li class="details-item">
							<a href="javascript:;">
								<img src="../img/m_home_use_birthday.png"/>
								<span>全部</span>
							</a>
						</li>
						
					</ul>
					<ul id="flower8">
						<a href="javascript:;"></a>
						<div class="nav-title">
							<span>绿植花卉</span>
						</div>
						<li class="details-item">
							<a href="javascript:;">
								<img src="../img/m_home_use_birthday.png"/>
								<span>全部</span>
							</a>
						</li>
						<li class="details-item">
							<a href="javascript:;">
								<img src="../img/m_home_use_birthday.png"/>
								<span>爱情鲜花</span>
							</a>
						</li>
						<li class="details-item">
							<a href="javascript:;">
								<img src="../img/m_home_use_birthday.png"/>
								<span>老师长辈</span>
							</a>
						</li>
					</ul>
				</div>
			</div>
	    </div>
    </div>
</template>
<script>
export default {
    data() {
        return {
			
        }
    },
    methods: {
        goto(e){
		  var toId=e.target.dataset.to;
		  var ulId=document.getElementById(toId);
		  var all=document.querySelectorAll(".details-list>ul");
		  for(var i=0;i<all.length;i++){
			  all[i].style.display='none'
		  }
		  console.log(all);
		  ulId.style.display='block';
		}
	},
	
}
</script>
<style>
input{outline:none;}
.app-container {
    padding: 0; 
    overflow: visible;
}
.mint-header.is-fixed{
	display: none;
}
input{outline:none;}
.hide{display: none;}
.classify-header{
	position: fixed;
	line-height: 44px;
	padding: 4px 8px ;
	box-sizing: border-box;
	border-bottom: 3px solid #f1f3f6;
	z-index: 99;
	width: 100%;
    background: #fff;
}
.details-list>ul+ul{
	display: none;
}
.classify-header>.search-box{
	width: 85%;
	margin-left:12px; ;
	padding: 0 12px ;
	box-sizing: border-box;
	line-height: 44px;
	background: #e9ecf0;
	border-radius: 8px;
	font-size: 14px;
}
.classify-header>span{
	font-size: 30px;
	margin-top: 8px;
}
.search-box>input{
	border: none;
    width: 80%;
    background: transparent;
	font-size: 16px;
	margin-bottom: 0;
}

.classify-menu>ul{
	width: 28%;
	position: fixed;
	top:2.22rem;
	left: 0;
	bottom: 8%;
	border-right:3px solid #f1f3f6 ;
}
.classify-menu>ul li{
	line-height: 32px;
	text-align: center;
	margin: 10px 0 10px 0 ;
} 
.classify-menu>ul>li:first-child{
	margin-top:0 ;
	padding-top:10px ;
}
.menu-content{
	top: 2.22rem;
	width: 72%;
    left: 28%;
    bottom: 3.5rem;
}
.details-list>ul{
	font-size: 0;
	padding: 0.2rem;
}
.details-list>ul>li{
	width:33.3%;
	display: inline-block;
}
.details-list>ul>a{
	display: block;
	height: 6.6rem;
	margin-bottom:1rem; 
    background: url(../img/18_shizizuo_m.jpg) no-repeat;
    background-size: 100% 100%;
}
.details-item>a{
	display: block;
	margin-bottom: 0.4rem;
}
.details-list .details-item{
	font-size: 0.5rem;
}
.details-item>a img{
	border-radius:50% ;
	width: 80%;
	margin-left:0.25rem;
}
.details-item>a span{
	display: block;
	text-align: center;
}
.nav-title{
	line-height: 28px;
    margin-bottom: 12px;
    font-size: 0.5rem;
    border-bottom: 1px solid #E9ECF0;
}

.diamonds>a>img{
	border-radius:0 ;
	width: 3rem;
}
.flower5 .nav-title{
	border-bottom: none;
}
.nav-title .recommend{
	font-size: 0;
}
.recommend>li{
	display: inline-block;
	width: 30%;
	height: 3.6rem;
	margin-left: 4%;
}
.recommend>li:first-child{
	margin-left: 0;
	background: url(../img/m_cate_new.jpg) no-repeat;
	background-size: 100% 100%;
}
.recommend>li:nth-child(2){
	background: url(../img/swarovski-m.png) no-repeat;
	background-size: 100% 100% ;
}
.recommend>li:last-child{
	background: url(../img/m_cata_hellokitty.jpg) no-repeat;
	background-size: 100% 100%;
}
.recommend>li>p{
	text-align: center;
	font-size: 0.5rem;
    margin-top: 2.6rem;
}
.border-n{
	border-bottom: 0;
}

</style>


