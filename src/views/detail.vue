<template>
    <div class='detail'>
        <!-- 头部 -->
        <div class='detail_header'>
            <a href="javascript:;"><span class='mui-icon mui-icon-arrowleft'></span></a>
            <a href="javascript:;">Hua.com花礼网</a>
            <a href="javascript:;"><span class='mui-icon mui-icon-bars'></span></a>
        </div>
        <!-- 图片展示 -->
        <!-- 轮播图区域 -->
		<mt-swipe :auto='90000000'>
            <!-- 在组件中，使用v-for循环的话，一定要使用 key -->
            <mt-swipe-item v-for="(item,i) of lunbotuList" :key="i">
                <img :src='require("../"+item.img_url)' alt="">
            </mt-swipe-item>
	    </mt-swipe>
        <!-- 详细信息 -->
        <div class='detail_info'>
            <div class='info1'>
                <div><p>一往情深-精品玫瑰礼盒:19枝红玫瑰，勿忘我0.1扎<span>经典爆款，年销售冠军！</span></p></div>
                <div><a href="javascript:;" class='iconfont  icon-shoucang'></a></div>
            </div>
            <div class='info2'>
                <div>
                    <span class='price'>¥535</span>
                    <span class='price_parent'>¥664</span>
                    <span class='zhe'>8折</span>
                </div>
                <div><span>已售22.3万件</span></div>
            </div>
            <div class='info3'>
                <div>8.5~8.8配送:¥535</div>
                <div>平日配送:¥369</div>
            </div>
        </div>
        <!-- APP -->
        <div class='phone_app'>
            <span class='mui-icon-extra mui-icon-extra-calc'></span>
            <span>APP下单立减11元</span>
            <span class='mui-icon mui-icon-arrowright'></span>
        </div>
        <div class='empty'></div>
        <!-- 商品信息 -->
        <div class='pro_info'>
            <div>
                <div>花语</div>
                <div>再多一点点距离，我就能靠近你。清晰甜美的空气里，爱你到不能呼吸。</div>
            </div>
            <div>
                <div>材料</div>
                <div>再多一点点距离，我就能靠近你。清晰甜美的空气里，爱你到不能呼吸。</div>
            </div>
            <div>
                <div>配送</div>
                <div>全国</div>
            </div>
            <div>
                <div>附送</div>
                <div>下单填写留言，即免费赠送精美贺卡！</div>
            </div>
        </div>
        <div class='empty'></div>
        <!-- 价格趋势图 -->
        <div class='jiage_img'>
            <img src="../img/festival_price_trend_m.png" alt="">
        </div>
        <div class='empty'></div>
        <!-- 订单评价 -->
        <div class='pingjia'>
            <div>订单评价</div>
            <div>最近已有8500条评价<i class='mui-icon mui-icon-arrowright'></i></div>
        </div>

        <my-detailfooter></my-detailfooter>
    </div>
    
</template>

<script>
import detailbuttom from './detail_buttom'
export default {
    components: {
        "my-detailfooter":detailbuttom,
    },
    data(){
        return{
            lunbotuList:[],
        }
    },
    created(){
        this.getLunbotu();
    },
    methods:{
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


<style scoped>
.detail{
    width:100%;
    box-sizing: border-box;
}
.detail .detail_header{
    height:1.8rem;
    display: flex;
    justify-content: space-around;
}
.detail .detail_header>a{
    width:100%;
    box-sizing: border-box;
    height:100%;
    width: 10%;
    text-align: center;
    line-height:1.8rem;
    color:#232628;
}
.detail .detail_header>a:nth-child(2){
    width: 80%;
    color:#FF734C;
    font-size: 18px;
    font-weight: bold;
}
.detail .detail_header>a>span{
    width: 100%;
    display: inline-block;
    text-align: center;
}
.detail .detail_header .mui-icon-bars{
    font-size: 18px;
}

.detail .mint-swipe{
    height:410px !important;
}
.detail .mint-swipe-items-wrap {
    height:100% !important;
    margin-top: 1px !important;
}
.detail .mint-swipe-item img{
    width:100%;
    height:410px;
}
.detail .mui-grid-view.mui-grid-9{
	background-color: #fff;
	border:none;
}
.detail .mui-grid-view.mui-grid-9 img{
  width:60px;height:60px;
  border-radius: 50%;
}
.detail .mui-grid-view.mui-grid-9 .mui-table-view-cell{
	border: 0;
}
.detail .mui-media-body{
	font-size: 12px;
}
.detail .mui-table-view.mui-grid-view .mui-table-view-cell .mui-media-body {
  font-size: 12px;
  text-overflow:clip;
}
.detail .detail_info{
    width:100%;
    height:144px;
    box-sizing: border-box;
    padding:12px 16px;
    display: flex;
    flex-direction: column;
} 
.detail .detail_info .info1{
    display: flex;
    width:100%;
    height:1.6rem;
}
.detail .detail_info .info1>div:first-child{
    width:88%;
    height:100%;
}
.detail .detail_info .info1>div:nth-child(2){
    width:12%;
    height:100%;
    text-align: center;
}
.detail .detail_info .info1 p{
    font-size: 14px;
    height: 100%;
    overflow: hidden;
    color:#232628;
}
.detail .detail_info .info1 span{
    color:#FF734C;
    margin-left: 0.6rem;
}
.detail .detail_info .info1 .iconfont{
    font-size: 22px;
}
.detail .detail_info .info2{
    width:100%;
    height:25px;
    margin-top: 0.5rem;
    display: flex;
    justify-content: space-between;
}
.detail .detail_info .info2 .price{
    font-size: 20px;
    font-weight: bold;
    color:#FF734C;
}
.detail .detail_info .info2 .price_parent{
    color: #B4BABF;
    margin-left: 0.3rem;
    font-size: 0.6rem;
    margin-right: 0.65rem;
    text-decoration: line-through;
}
.detail .detail_info .info2 .zhe{
    display: inline-block;
    width:32px;
    height:20px;
    border-radius: 0.4rem;
    background-color:#3D4D42;
    color:#fff;
    font-size: 12px;
    padding:0 6px;
}
.detail .detail_info .info3{
    width: 100%;
    height:32px;
    display: flex;
    justify-content: start;
    margin-top: 0.3rem;
    text-align: center;
}
.detail .detail_info .info3 div{
    color: #FF734C;
    border:1px solid #FF734C;
    font-size: 12px;
    height:1.2rem;
    padding:0 8px;
    line-height: 28px;
    border-radius: 2px;
}
.detail .detail_info .info3 div:nth-child(2){
    border-color: #232628;
    color:#232628;
    margin-left: 0.5rem;
}
.detail .phone_app{
    width:100%;
    height:2rem;
    box-sizing: border-box;
    display: flex;
    justify-content: start;
    padding:14px 16px;
    text-align: left;
    align-items: center;
}
.detail .phone_app span{
    width:10%;
}
.detail .phone_app span:nth-child(2){
    width:80%;
    font-size: 0.7rem;
}
.detail .phone_app span.mui-icon,.detail .phone_app span.mui-icon-extra  {
    font-size: 18px;
}
.detail .pro_info{
    width:100%;
    box-sizing: border-box;
    padding:0 16px;
    display: flex;
    flex-direction: column;
    justify-content: space-around;
}
.detail .pro_info>div{
    display: flex;
    flex-direction: row;
}
.detail .pro_info>div>div:nth-child(1){
    width:2rem; 
    padding:8px 0;
}
.detail .pro_info>div>div:nth-child(2){
    border-bottom: 1px solid #bbb;
    padding:8px 0;
    width:100%;
}
.detail .pro_info>div>div:last-child{
    border-bottom:0;
}
.detail .empty{
    width:100%;
    height:0.4rem;
    background-color: #e9ecf0;
}
.detail .jiage_img{
    width:100%;
    height:168px;
}
.detail .jiage_img img{
    width:100%;
    height:100%;
}
.detail .pingjia{
    width:100%;
    height:45px;
    box-sizing: border-box;
    padding:12px 16px;
    display: flex;
    justify-content: space-between;
}
.detail .pingjia div:first-child{
    font-size: 18px;
    color:#232628;
}
.detail .pingjia div:last-child{
    font-size: 12px;
    color:#71797F;
}
.detail .pingjia .mui-icon{
    font-size: 14px;
}
</style>

