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
    <!-- 消息播报 -->
		<div class='laba'>
      <img src="../img/laba.jpg" alt="">
      <span>{{msg}}</span>
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
.mint-swipe-item:nth-child(1){
    background-color: red;
}
.mint-swipe-item:nth-child(2){
    background-color: blue;
}
.mint-swipe-item:nth-child(3){
    background-color: yellow;
}
.mint-swipe-item:nth-child(4){
    background-color: #0f0;
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
</style>

