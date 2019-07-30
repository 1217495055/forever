<template>
  <div>
		<!-- 轮播图区域 -->
		<mt-swipe :auto='4000'>
            <!-- 在组件中，使用v-for循环的话，一定要使用 key -->
            <!-- <mt-swipe-item v-for="(item,i) of lunbotuList" :key="i">
                {{item.img_url}}
                <img :src="item.img_url" alt="">
            </mt-swipe-item> -->
			<mt-swipe-item><img src="../img/轮播图1.jpg" alt=""></mt-swipe-item>
			<mt-swipe-item><img src="../img/轮播图2.jpg" alt=""></mt-swipe-item>
			<mt-swipe-item><img src="../img/轮播图3.jpg" alt=""></mt-swipe-item>
			<mt-swipe-item><img src="../img/轮播图4.jpg" alt=""></mt-swipe-item>
		</mt-swipe>
    <!-- 四个bar -->
    <div class='four-bar'>
      <a href="javascript:;"><i>√</i><span>认证龙头企业</span></a>
      <a href="javascript:;"><i>√</i><span>13年品牌</span></a>
      <a href="javascript:;"><i>√</i><span>3小时送花</span></a>
      <a href="javascript:;"><i>√</i><span>最近2434条好评</span></a>
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
    </div>
  </div>
</template>


<script>
export default {
    data(){
        return{
            lunbotuList:[],  //保存轮播图的数组
            msg:'走过路过，千万不要错过~~~~~~~fa,efgalwrefgalwertfgrg!',
        }
    },
    created(){
        this.getLunbotu();
        this.lang();
    },
    methods:{
      lang(){
        if(this.intervalId!=null){return}
        this.intervalId = setInterval(()=>{
            var start = this.msg.substring(0,1);
          var end = this.msg.substring(1);
          this.msg = end + start
          },800)
        },
        getLunbotu(){
            // 获取轮播图数据
            this.axios.get('http://127.0.0.1:3000/user/lunbotu').then(result=>{
                console.log(result.data.message[0].img_url)
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


<style scoped>
.mint-swipe{
    height:200px;
}
.mint-swipe-item img{
    width:100%;
    height:100%;
}
.mui-grid-view.mui-grid-9{
	background-color: #fff;
	border:none;
}
.mui-grid-view.mui-grid-9 img{
	width:60px;height:60px;
}
.mui-grid-view.mui-grid-9 .mui-table-view-cell{
	border: 0;
}
.mui-media-body{
	font-size: 12px;
}
.laba{
  width:100%;
  height:20px;
  margin: 6px 0 4px;
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
  font-size: 14px;
  color:#666;
  overflow: hidden;
}
.four-bar{
  width:100%;
  height:16px;
  margin: 2px 5px;
  text-align: center;
  display: flex;
  justify-content: space-around;
}
.four-bar a i{
  width:12px;
  height:12px;
  display: inline-block;
  color:#fff;
  font-size: 12px;
  background-color: #000;
  border-radius:50%; 
}
.four-bar a span{
  color:#666;
  font-size: 12px;
}
p{
      margin:0;padding:0;
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
  .yimiao .title>span,.yimiao .birthday>span{
      display: inline-block;
      width:5px;
      height:16px;
      margin: 0 4px 0 16px;
  }
  .yimiao .friends,.yimiao .birthday,.yimiao .hot{
      display: flex;
      justify-content: space-around;
      margin: 4px;
  }
  .yimiao .friends>div{
      position: relative;
      margin-right: 2px;
      width:32%;
      text-align: center;
      height:120px;
  }
  .yimiao .friends>div:first-child{
      background-color: #eccece;
  }
  .yimiao .friends>div:nth-child(2){
      background-color: #caefbc;
  }
  .yimiao .friends>div:nth-child(3){
      background-color: #cef0f7;
  }
  .yimiao .birthday>div{
      width:24%;
      height:100px;
      background-color: #ceb3b3;
      text-align: center;
      position: relative;
  }
  .yimiao .hot>div{ 
      position: relative;
      width:50%;
      height:120px;
      background-color: #d0b0b0;
      margin-right: 2px;
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
      background-color: #f00;
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
</style>

