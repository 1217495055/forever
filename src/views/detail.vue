<template>
    <div class='detail'>
        <!-- 头部 -->
        <div class='detail_header'>
            <a href="javascript:;" @click='history'><span class='mui-icon mui-icon-arrowleft'></span></a>
            <a href="javascript:;">Hua.com花礼网</a>
            <a href="javascript:;"><span class='mui-icon mui-icon-bars'></span></a>
        </div>
        <!-- 图片展示 -->
        <!-- 轮播图区域 -->
		<mt-swipe :auto='90000'>
            <!-- 在组件中，使用v-for循环的话，一定要使用 key -->
            <mt-swipe-item>
                <img :src='"http://127.0.0.1:3000"+detailinfo[0].pic_url1' alt="">
            </mt-swipe-item>
            <mt-swipe-item>
                <img :src='"http://127.0.0.1:3000"+detailinfo[0].pic_url2' alt="">
            </mt-swipe-item>
            <mt-swipe-item>
                <img :src='"http://127.0.0.1:3000"+detailinfo[0].pic_url3' alt="">
            </mt-swipe-item>
            <mt-swipe-item>
                <img :src='"http://127.0.0.1:3000"+detailinfo[0].pic_url4' alt="">
            </mt-swipe-item>
	    </mt-swipe>
        <!-- 详细信息 -->
        <div class='detail_info'>
            <div class='info1'>
                <div><p v-cloak>{{detailinfo[0].product_name+'-'+detailinfo[0].descript}}<span v-text='detailinfo[0].hot_title'></span></p></div>
                <div><a href="javascript:;" class='iconfont  icon-shoucang'></a></div>
            </div>
            <div class='info2'>
                <div>
                    <span class='price' v-cloak>¥{{detailinfo[0].price}}</span>
                    <span class='price_parent' v-cloak>¥{{detailinfo[0].price_parent}}</span>
                    <span class='zhe'>8折</span>
                </div>
                <div><span v-cloak>已售 {{detailinfo[0].click}} 件</span></div>
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
                <div v-text='detailinfo[0].pic_desc'></div>
            </div>
            <div>
                <div>材料</div>
                <div v-text='detailinfo[0].descript'></div>
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
        <!-- 配送至 -->
        <div class='media'>
            <div>配送至</div>
            <div class='mui-icon mui-icon-location'></div>
            <div class='se_sity'>
                <p class='c_ear'>请选择配送地区</p>
                <p class='c_ear'>请选择配送地区</p>
            </div>
            <div class='mui-icon mui-icon-more' @click='display'></div>
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
        <!-- 用户评论 -->
        <my-usercom></my-usercom>
        <div class='empty'></div>
        <!-- 选择我们 -->
        <my-select></my-select>
        <div class='empty'></div>
        <!-- 图文详情 -->
        <div class='detail_img'>
            <div class='img_title'>图文详情</div>
            <div class='img_title1'>
                <img :src='"http://127.0.0.1:3000"+detailinfo[0].pic_url1' alt="">
                <div class='title_info'>
                    <p v-text='detailinfo[0].product_name'></p>
                    <p v-text='detailinfo[0].pic_desc'></p>
                </div>
                <img :src='"http://127.0.0.1:3000"+detailinfo[0].pic_url2' alt="">
                <div class='title_info'>
                    <p v-text='detailinfo[0].product_name'></p>
                    <p v-text='detailinfo[0].descript'></p>
                </div>
                <img :src='"http://127.0.0.1:3000"+detailinfo[0].pic_url3' alt="">
                <div class='title_info'>
                    <p></p>
                </div>
                <img :src='"http://127.0.0.1:3000"+detailinfo[0].pic_url4' alt="">
                <div class='title_info'>
                    <p></p>
                    <!-- <p>陪了你情窦初开，还想陪你两鬓斑白！</p> -->
                </div>
                <img src="../img/lika.png" alt="" class='last_img'>
                <div class='title_info'>
                    <p>贴心服务 下单即享</p>
                    <p>免费增送精美礼卡·您可填写留言</p>
                </div>
            </div>
        </div>
        <my-whyselect></my-whyselect>
        <my-detailfooter></my-detailfooter>
        <!-- 三级联动 -->
        <div class='detail_province'>
            <div class='detail_city'>
                <!-- 头部 -->
                <div class='city_title'>
                    <div>配送至</div>
                    <div class='mui-icon mui-icon-closeempty' @click='none'></div>
                </div>
                <!-- 请选择 -->
                <div class='city_select'>
                    <div class='active'>请选择</div>
                    <div class='none'>请选择</div>
                    <div class='none'>请选择</div>
                </div>
                <!-- 三级联动 -->
                <div class='pro_eara'>
                    <ul  @click='pro_info'>
                        <li v-for='(item,i) of provincelist' :key='i'>
                            <p :data-pro='item.provinceid' v-text='item.province'></p>
                        </li>
                    </ul>
                    <ul @click='city_info'>
                        <li v-for='(item,i) of citylist' :key='i'>
                            <p :data-city='item.cityid' v-text='item.city'></p>
                        </li>
                    </ul>
                    <ul>
                        <li v-for='(item,i) of arealist' :key='i'>
                            <p :data-area='item.areaid' v-text='item.area'></p>
                        </li>
                    </ul>
                
                </div>
            </div>
        </div>
    </div>
    
</template>

<script>
import detailbuttom from './detail_buttom'
import usercom from './user_com'
import select from './select'
import whyselect from './whyselect'
export default {
    components: {
        "my-detailfooter":detailbuttom,
        "my-usercom":usercom,
        "my-select":select,
        "my-whyselect":whyselect,
    },
    props:['id'],
    data(){
        return{
            detailinfo:[],
            provincelist:[],
            pro_id:'',
            citylist:[],
            arealist:[],
            city_id:'',
        }
    },
    created(){
    this.getinfo();
    },
    methods:{
        pro_info(e){
            this.pro_id = e.target.dataset.pro;
            this.city();
        },
        city_info(e){
            this.city_id = e.target.dataset.city;
            this.area();
        },
        area(){
            // 获取县信息
            this.axios.get('area',{params:{id:this.city_id}}).then(result=>{
                if(result.data.status==0){
                    this.arealist = result.data.message;
                    console.log(this.citylist)
                }else{
                    // 失败
                    this.$toast({message :'加载失败'});
                }
            })
        },
        city(){
            // 获取市信息
            this.axios.get('city',{params:{id:this.pro_id}}).then(result=>{
                if(result.data.status==0){
                    this.citylist = result.data.message;
                }else{
                    // 失败
                    this.$toast({message :'加载失败'});
                }
            })
        },
        province(){
            // 将市的按钮显示出来，并将县的隐藏
            // 获取省份信息
            this.axios.get('province').then(result=>{
                if(result.data.status==0){
                    this.provincelist = result.data.message;
                }else{
                    // 失败
                    this.$toast({message :'加载失败'});
                }
            })
        },
        display(){
            var liandong = document.getElementsByClassName('detail_province');
            liandong[0].classList.add('dis_none');
            this.province();
        },
        none(){
            var liandong = document.getElementsByClassName('detail_province');
            liandong[0].classList.remove('dis_none');
        },
        history(){
            this.$router.go(-1);
        },
        // getinfo(){
        //     // 获取详情页数据
        //     var id1=this.id;
        //     this.axios.get('getinfo',{params:{id:id1}}).then(result=>{
        //         if(result.data.status==0){
        //             this.detailinfo = result.data.message;
        //             console.log(this.detailinfo[0].pic_url1)
        //         }else{
        //             // 失败
        //             this.$toast({message :'加载失败'});
        //         }
        //     })
        // }
        getinfo(){
            // 获取详情页数据
            var data = {id:this.id}
            this.axios.post('getinfo',data).then(result=>{
                if(result.data.status==0){
                    this.detailinfo = result.data.message;
                    console.log(this.detailinfo[0].pic_url1)
                }else{
                    // 失败
                    this.$toast({message :'加载失败'});
                }
            })
        }
    }
}
</script>


<style scoped>
.detail_city .city_select .none{display: none}
.detail_city .city_select .block{display: block}
.detail{
    width:100%;
    box-sizing: border-box;
}
.detail .media{
    display: flex;
    background-color: #fff;
    padding:14px 16px;
    width:100%;
    box-sizing: border-box;
    color:#232628;

}
.detail .media div{
    width:10%;
}
.detail .media div:first-child{
    width:12%;
}
.detail .media .se_sity{
    width:68%;
}
.detail .media .se_sity p{
    font-size: 12px;
}
.detail .detail_header{
    height:1.8rem;
    display: flex;
    justify-content: space-around;
}
.detail .media div.mui-icon{
    font-size: 16px;
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
.detail .detail_img{
    width:100%;
    height:2180px;
}
.detail .detail_img .img_title{
    width:100%;
    padding:0.5rem 16px;
    font-size: 14px;
}
.detail .detail_img .img_title1{
    width:100%;
    height:408px;
}
.detail .detail_img .img_title1 img{
    width:100%;
    height:408px;
}
.detail .detail_img .img_title1 .title_info{
    width:100%;
    text-align: center;
    margin-bottom: 0.6rem;
}
.detail .detail_img .img_title1 .title_info p{
    margin-top:0.3rem;
    font-size: 0.5rem;
    padding:0 1rem;
    color:#666;
}
.detail .detail_img .img_title1 .last_img{
    height:215px;
}

.detail_province{
    width:100%;
    height:100%;
    background-color: rgba(35, 38, 40, 0.8);
    position: fixed;
    top: 0;
    display: none;
    
}
.detail_province.dis_none{
    display: block;
    z-index: 99999999999;
}
.detail_province .detail_city{
    width:100%;
    height:60%;
    background-color: #fff;
    position: absolute;
    bottom: 0;
}
.detail_province .city_title{
    width: 100%;
    height: 36px;
    line-height: 36px;
    font-size: 14px;
    text-align: center;
    display: flex;
}
.detail_province .city_title div:first-child{
        color: #FF734C;
        width:90%;
}
.detail_province .city_title div.mui-icon{
    font-size: 34px;
}
.detail_province .city_select{
    padding: 0 4px;
    border-bottom: 1px solid #F7F9FA;
    height:1.5rem;
    display: flex;
}
.detail_province .city_select div{ 
    color: #232628;
    font-size: 14px;
    width:30%;
    line-height: 36px;
    padding: 0 12px;
    font-size: 12px;
    text-align: center;
}
.detail_province .city_select div.active{
    color: #FF734C;
    font-weight: 500;
    border-bottom:1px solid #FF734C;
}
.detail_province .detail_city .pro_eara ul{
    overflow-x: hidden;
    overflow-y: auto;
    margin: 0;
    box-sizing: border-box;
    width: 30%;
    margin-bottom: 1rem;
}
.detail_province .detail_city .pro_eara{
    display: flex;
    width: 100%;
    height: 100%;
    padding: 16px;
}
.detail_province .detail_city .pro_eara ul>li{
    width: 100%;
    height: 36px;
    line-height: 36px;
}
.detail_province .detail_city .pro_eara ul>li>p{
    font-size: 12px;
     text-overflow:ellipsis;
     color:#232628; 
}
</style>

