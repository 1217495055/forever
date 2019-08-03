<template>
  <div>
    <my-header></my-header>
		<!-- 轮播图区域 -->
		<mt-swipe :auto='4000'>
      <!-- 在组件中，使用v-for循环的话，一定要使用 key -->
      <mt-swipe-item v-for="(item,i) of lunbotuList" :key="i">
          <img :src='require("../"+item.img_url)' alt="">
      </mt-swipe-item>
		</mt-swipe>
    <!-- 四个bar -->
    <div class='four-bar'>
      <a href="javascript:;"><i>√</i><span>认证龙头企业</span></a>
      <a href="javascript:;"><i>√</i><span>13年品牌</span></a>
      <a href="javascript:;"><i>√</i><span>3小时送花</span></a>
      <a href="javascript:;"><i>√</i><span>最近2434条好评</span></a>
    </div>
    <!-- 5个logo -->
    <div class='five_logo'>
      <a href="javascript:;"><img src="../img/1.png" alt=""><span>鲜花</span></a>
      <a href="javascript:;"><img src="../img/2.png" alt=""><span>永生花</span></a>
      <a href="javascript:;"><img src="../img/3.png" alt=""><span>蛋糕</span></a>
      <a href="javascript:;"><img src="../img/4.png" alt=""><span>礼品</span></a>
      <a href="javascript:;"><img src="../img/5.png" alt=""><span>巧克力</span></a>
    </div>
    <!-- 消息播报 -->
		<div class='laba'>
      <img src="../img/laba.jpg" alt="">
      <span>{{msg}}</span>
    </div>
    <!-- 一秒选花 -->
    <div class='yimiao clearfix'>
        <p class='title'>
            <span></span>一秒选花
        </p>
        <!-- 一楼 -->
        <div class='friends'>
            <div><p>送恋人</p></div>
            <div><p>送长辈</p></div>
            <div><p>送朋友</p></div>
        </div>
        <!-- 二楼 -->
        <div class='birthday'>
            <div><p>生日祝福</p></div>
            <div><p>表白求婚</p></div>
            <div><p>商务开业</p></div>
            <div><p>周年纪念</p></div>
        </div>
        <!-- 三楼 -->
        <div class='hot'>
            <div>
                <div class='hot_top'>
                    <p>热销榜</p>
                    <p>集万千宠爱</p>
                </div>
                <p><span>大家都在买</span><span>热销9.8万束</span></p>
            </div>
            <div>
                <div class='hot_top'>
                    <p>热销榜</p>
                    <p>集万千宠爱</p>
                </div>
                <p><span>大家都在买</span><span>热销9.8万束</span></p>
            </div>
        </div>
        <!-- 四楼 -->
        <div class='newbrand'>
          <div><div class='newform'>新品来袭</div></div>
          <div><div class='newform'>品味之选</div></div>
          <div><div class='newform'>设计师甄选</div></div>
        </div>
    </div>
    <!-- 送恋人/爱情鲜花 -->
    <my-index :list='list1' :title='title1'></my-index>

    <!-- 送长辈鲜花 -->
    <my-index :list='list2' :title='title2'></my-index>

    <!-- 永生花推荐 -->
    <div class='send_lover'>
      <!-- 顶部灰色区域 -->
      <div class='gray'></div>
      <!-- 标题 -->
      <div class='title'>
        <p>永生花推荐</p>
      </div>
      <my-showlist :list='list3'></my-showlist>
      <!-- 查看更多 -->
      <div class='more'>
        <a href="javascript:;">查看更多</a>
      </div>
    </div>

    <!-- 蛋糕推荐 -->
    <div class='send_lover'>
      <!-- 顶部灰色区域 -->
      <div class='gray'></div>
      <!-- 标题 -->
      <div class='title'>
        <p>蛋糕推荐</p>
      </div>
      <my-showlist :list='list4'></my-showlist>
      <!-- 查看更多 -->
      <div class='more'>
        <a href="javascript:;">查看更多</a>
      </div>
    </div>

    <!-- 礼品推荐 -->
    <div class='send_lover'>
      <!-- 顶部灰色区域 -->
      <div class='gray'></div>
      <!-- 标题 -->
      <div class='title'>
        <p>礼品推荐</p>
      </div>
      <my-showlist :list='list5'></my-showlist>
      <!-- 查看更多 -->
      <div class='more'>
        <a href="javascript:;">查看更多</a>
      </div>
    </div>

    <!-- 巧克力推荐 -->
    <div class='send_lover'>
      <!-- 顶部灰色区域 -->
      <div class='gray'></div>
      <!-- 标题 -->
      <div class='title'>
        <p>巧克力推荐</p>
      </div>
      <my-showlist :list='list6'></my-showlist>
      <!-- 查看更多 -->
      <div class='more'>
        <a href="javascript:;">查看更多</a>
      </div>
    </div>

    <!-- 底部 -->
    <div class='img_buttom'>
      <img src="../img/6.png" alt="">
    </div>
    <!-- 选择我们 -->
    <div class='foot_select'>
      <div class='select'>为什么选择我们</div>
      <!-- 六宫格 -->
      <ul class="mui-table-view mui-grid-view mui-grid-9">
        <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><router-link to="/home/newlist">
          <img src="../img/m_details_brand_01.png" alt="">
          <div class="mui-media-body">获评龙头企业</div></router-link></li>
        <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><a href="#">
          <img src="../img/m_details_brand_02.png" alt="">
          <div class="mui-media-body">1~3小时送花上门</div></a></li>
        <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><a href="#">
          <img src="../img/m_details_brand_03.png" alt="">
          <div class="mui-media-body">冠军花艺师团队</div></a></li>
        <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><a href="#">
          <img src="../img/m_details_brand_04.png" alt="">
          <div class="mui-media-body">严选花材</div></a></li>
        <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><a href="#">
          <img src="../img/m_details_brand_05.png" alt="">
          <div class="mui-media-body">12道品控标准</div></a></li>
        <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><a href="#">
          <img src="../img/m_details_brand_06.png" alt="">
          <div class="mui-media-body">500万用户好评</div></a></li>
      </ul>
    </div>
    <my-footer></my-footer>
  </div>
</template>


<script>
import header from './header'
import footer from './footer'
import showlist from './showlist'
import indexshow from './indexshow'
export default {
  components: {
        "my-showlist":showlist,
        "my-header":header,
        "my-footer":footer,
        "my-index":indexshow,
    },
    data(){
        return{
            lunbotuList:[],  //保存轮播图的数组
            msg:'一花易世界，一换易长情。花样年华，爱挚一生。一路有“礼”，一生相伴。与你共花月，此刻愿长流。花香有期，唯爱永生。',
            list:[],
            list1:[],
            list2:[],
            list3:[],
            list4:[],
            list5:[],
            list6:[],
            title1:'送恋人/爱情鲜花',
            title2:'送长辈鲜花',
        }
    },
    created(){
        this.getLunbotu();
        this.lang();
        this.show();
    },
    methods:{
        show(){
          this.axios.get('index_show').then(result=>{
            if(result.data.status==0){
              this.list=result.data.message;
              this.list1=this.list.slice(0,8);
              this.list2=this.list.slice(8,12);
              this.list3=this.list.slice(12,16);
              this.list4=this.list.slice(16,20);
              this.list5=this.list.slice(20,24);
              this.list6=this.list.slice(24,);
            }else{
              this.$toast({message :'首页加载失败'});
            }
          })
        },
        lang(){
          setInterval(()=>{
          var start = this.msg.substring(0,1);
          var end = this.msg.substring(1);
          this.msg = end + start
          },800)
        },
        getLunbotu(){
            // 获取轮播图数据
            this.axios.get('lunbotu').then(result=>{
                if(result.data.status==0){
                    this.lunbotuList = result.data.message;
                }else{
                    // 失败
                    this.$toast({message :'加载轮播图失败'});
                }
            })
        }
    }
}
</script>


<style>
@import url('../../public/css/reset.css');
[v-cloak]{display:none}
.mint-swipe{
    height:240px !important;
}
.mint-swipe-items-wrap {
    margin-top: 50px;
    height:79% !important;
}
.mint-swipe-item img{
    width:100%;
    height:190px;
}
.mui-grid-view.mui-grid-9{
	background-color: #fff;
	border:none;
}
.mui-grid-view.mui-grid-9 img{
  width:60px;height:60px;
  border-radius: 50%;
}
.mui-grid-view.mui-grid-9 .mui-table-view-cell{
	border: 0;
}
.mui-media-body{
	font-size: 12px;
}
.mui-table-view.mui-grid-view .mui-table-view-cell .mui-media-body {
  font-size: 12px;
  text-overflow:clip;
}
p{
  margin:0;padding:0;
}
.laba{
  width:100%;
  height:20px;
  margin: 6px 0;
}
.laba img{
  width:20px;
  height:20px;
  float: left;
  margin:0 6px 0 20px;
}
.laba span{
  display: inline-block;
  width:80%;
  height:100%;
  font-size: 12px;
  color:#cc030b;
  overflow: hidden;
}
.four-bar{
  height:16px;
  margin: 2px 5px;
  text-align: center;
  display: flex;
  justify-content: space-around;
  box-sizing: border-box;
}
.four-bar a i{
  width:12px;
  height:12px;
  display: inline-block;
  color:#fff;
  font-size: 12px;
  background-color: #000;
  border-radius:50%; 
  margin-right: 2px;
}
.four-bar a span{
  color:#666;
  font-size: 12px;
}
  .clearfix:after{
      content: '';
      display: block;
      clear:both;
  }
  .yimiao{
      width:100%;
      font-size: 10px;
  }
  .yimiao p{
    color:#505056;
    font-size: 14px;
    margin-top:10px;
  }
  .yimiao .title{
    margin-top:2px;
  }
  .yimiao .title>span{
    background-color: #473e3e;
  }
  .yimiao .title>span,.yimiao .birthday>span{
      display: inline-block;
      width:5px;
      height:16px;
      margin: 0 4px 0 16px;
  }
  .yimiao .friends,.yimiao .birthday,.yimiao .hot,.yimiao .newbrand,.five_logo{
      display: flex;
      justify-content: space-around;
      margin: 4px;
  }
  .yimiao .friends img{
    width:100%;
    height:100%;
  }
  .yimiao .friends>div{
      position: relative;
      margin-right: 2px;
      width:32%;
      text-align: center;
      height:120px;
  }
  .yimiao .friends>div:first-child{
      background:url('../img/m_home_use_love.png') no-repeat;
      background-size:100% 100%;
  }
  .yimiao .friends>div:nth-child(2){
      background:url('../img/m_home_use_parent.png') no-repeat;
      background-size:100% 100%;
  }
  .yimiao .friends>div:nth-child(3){
      background:url('../img/m_home_use_friend.png') no-repeat;
      background-size:100% 100%;
  }
  .yimiao .birthday>div{
      width:24%;
      height:100px;
      background:url('../img/m_home_use_birthday.png') no-repeat;
      background-size:100% 100%;
      text-align: center;
      position: relative;
  }
.yimiao .birthday>div:nth-child(2){
  background:url('../img/m_home_use_profess.png') no-repeat;
  background-size:100% 100%;
  }
  .yimiao .birthday>div:nth-child(3){
  background:url('../img/m_home_use_business.png') no-repeat;
  background-size:100% 100%;
  }
  .yimiao .birthday>div:nth-child(4){
  background:url('../img/m_home_use_anniversary.png') no-repeat;
  background-size:100% 100%;
  }
  .yimiao .hot>div{ 
      position: relative;
      width:50%;
      height:120px;
      background:url('../img/m_home_ranklist.png') no-repeat;
      background-size:100% 100%;
      margin-right: 2px;
  }
   .yimiao .hot>div:nth-child(2){ 
     background:url('../img/m_home_special.png') no-repeat;
    background-size:100% 100%;
   }
  .hot .hot_top{
      position: absolute;
      top:8px;
      left:10px;
  }
  .hot .hot_top>p{
      margin: 2px ;
  }
  .hot>div>p{
      position: absolute;
      bottom: 10px;
      padding:0 10px;
      text-align: center;
  }
  .hot>div>p>span{
      margin: 0 10px 0 0;
      font-size: 8px;
  }
  .hot>div>p>span:first-child{
      display: inline-block;
      color:#fff;
      border-radius: 8px;
      width:62px;
      height:14px;
  }
  .hot>div>p>span:last-child{
      color:#999;
  }
  .yimiao .hot >div{
    border:1px solid #999;
  }
  .yimiao .newbrand>div{
    width:33%;
    height:120px;
    background:url('../img/m_home_category_new.png') no-repeat;
    background-size:100% 100%;
    position: relative;
  }
    .yimiao .newbrand>div:nth-child(2){
      background:url('../img/m_home_category_quality.png') no-repeat;
    background-size:100% 100%;
    }
    .yimiao .newbrand>div:nth-child(3){
      background:url('../img/m_home_category_you.png') no-repeat;
    background-size:100% 100%;
    }
   .yimiao .newbrand .newform{
     position: absolute;
     bottom: 0px;
     width: 100%;
     height:26px;
     text-align: center;
     line-height: 26px;
     color:#fff;
    background-color: #0909075c;
   }
   .five_logo{
     margin: 12px 10px !important;
   }
   .five_logo>a{
     display: flex;
    flex-direction:column;
     text-align: center;
     width:19%;
     height:54px;
    font-size: 10px;
   }
   .five_logo>a>img{
     margin-left: 20%;
     width:60%;
     height:75%;
   }
   /* .send_lover{
     margin-top: 10px;
   }
   .send_lover .gray{
    background-color: #ded6d6;
    height:8px;
   }
   .send_lover .title{
     height:50px;
     text-align: center;
     line-height: 50px;
   }
   .send_lover .title>p{
     color:#333;
   }
   .send_lover .detail>a{
     margin: 4px 8px;
     height:192px;
     box-shadow:0px 0px 4px #978e8e;
     border-radius: 3px;
     display: flex;
   }
   .send_lover .detail{
     margin-bottom:16px;
   }
   .send_lover .detail .img{
     width:50%;
   }
   .send_lover .detail .img img{
     width:100%;
     height: 100%;
   }
   .send_lover .detail .img_content{
     padding:4%;
     width: 50%;
     color:#666;
   }
   .send_lover .detail .img_content p:first-child{
     font-size: 14px;
     margin: 0.2rem 0;
   }
   .send_lover .detail .img_content p:nth-child(2){
     font-size: 2px;
     margin-bottom: 0.4rem;
     max-height: 1.5rem;
     overflow: hidden;
   }
   .send_lover .detail .img_content .top_bot{
     font-size: 12px;
     margin: 0.3rem 0;
     padding:5px 0;
     border-top:1px solid #cccbcb;
     border-bottom:1px solid #cccbcb;
     color:#333;
    margin-bottom: 0.4rem;
   }  
   .detail .img_content .price{
     width:70%;
     display: flex;
     flex-direction: column;
     font-size: 12px;
   }
   .detail .img_content .price>span:first-child{
      font-size: 0.7rem;
      color: #FF734C;
      font-weight: 500;
   }
    .detail .img_content .price>span:nth-child(2){
      font-size: 0.5rem;
      color:#666;
   }
   .detail .img_content .price i{
      text-decoration:line-through;
      color:#666;
      font-size: 12px;
      margin-left: 0.4rem;
   }
   .detail .img_content .shopcart{
     width:30%;
   }
   .detail .img_content .pri_shop{
     display: flex;
   }
   .detail .img_content .shopcart img{
     width:56%;
     height:56%;
     margin-top:6px; 
   }
   .detail .img_content .count{
     overflow: hidden;
     text-overflow: ellipsis;
     white-space: nowrap;
   }
   .detail .img_content .ret_count{
     border:1px solid orangered;
     color:orangered;
     font-size: 12px;
     padding:2px;
     border-radius: 6px;
   }
   .send_lover .more{
     height:36px;  
     text-align: center;
   }
   .send_lover .more a{
     margin-top:6px; 
     display: inline-block;
     border:1px  solid #796565;
     border-radius: 6px;
     width: 20%;
     height:26px;
     text-align: center;
     line-height: 26px;
      /* align-items: center; */
     /* font-size: 12px; */
   /* } */
   /* .detail.recom{
     display: flex;
    flex-wrap: wrap;
   }
   .detail.recom>a{
     width:47%;
     height:300px;
     display: flex;
     flex-direction: column;
     margin-left: 4px;
   }
   .detail.recom>a:nth-child(2n){
     margin-right:4px;
      margin-left: 0px;
      width:48%;
   }
   .detail.recom>a .img{
     width:100%;
     height:190px;
   }
  .detail.recom .img_content{
    width:100%;
    padding: 0 6px;
  }  */
  .img_buttom{
    margin-top: 20px;
  }
  .img_buttom img{
    width:100%;
    height:130px;
  }
.foot_select{
  margin-bottom: 60px;
  text-overflow: clip;
}
.foot_select li{
  width:33%;
}
.foot_select .select{
    font-size: 0.6rem;;
    padding: 20px 0 10px 0;
    text-align: center;
    font-weight: normal;
    color:#333;
}
</style>

