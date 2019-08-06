<template>
<<<<<<< HEAD
    <div class='cart'>
        <!-- 全选 -->
        <div class='selectAll'>
            全选<input type="checkbox" @change='selectAll'>
        </div>
        <!-- 购物车商品信息 -->
        <div v-for='(item,i) of list' :key='i' class='cart-item'>
            <div class='leftImgText'>
                <input type="checkbox" v-model='item.cb'>
                <img :src='"http://127.0.0.1:3000/"+item.img_url' alt="">
                <div class='lname'>{{item.lname}}</div>
                <div class='price'>{{item.price}}</div>
                
            </div>
            <mt-button @click='delItem' :data-id='item.id'>删除</mt-button>
        </div>
        <!-- 按钮，删除选中商品 -->
        <div>
            购物车商品数量
            <span>{{$store1.getters.getCartCount}}</span>
            <mt-button @click='delMitem'>删除选中商品</mt-button>
            小计: <span></span>
        </div>
    </div>
=======
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
>>>>>>> 583bd549efe3d968bef122840423566caddcd374
</template>
<script>
 import showlist from "./showlist"
import recommend from './recommend'
export default {
<<<<<<< HEAD
    data(){
        return{
            list:[],
        }
    },
    methods:{
        // 全选按钮处理函数
        selectAll(e){
            // 1 获取全选按钮
            var cb = e.target.checked;
            // 2 创建循环遍历购物车
            for(var item of this.list){
                // 3 将全选状态赋值购物车商品选中状态
                item.cb = cb;
            }
            
        },

        // 删除多个购物车中指定的商品
        delMitem(){
            // 1 创建变量保存多个购物车中id值
            var str= "";
            // 2 创建循环遍历数组获取状态true的id值
            for(var item of this.list){
                if(item.cb){    //当前商品被选中
                    str+=item.id+','    //将id
                }
            };
            // 判断用户是否选中了商品
            if(str.length==0){
                this.$$messagebox('请选择要删除的商品');
                return;
            }
            // 3截取字符串中最后，
            str = str.substring(0,str,length-1);
            // 4 显示交互式提示框，再次请求用户确认操作
            this.$messagebox.confirm('是否删除数据？').then(res=>{
                // 用户选择确认
                var url = 'delM';
                var ids = {ids:str};
                // 5 发送ajax请求，删除多个数据
                this.axios.get(url,{param:ids}).then(res=>{
                    // 6 提示用户删除成功
                    // 7 重新加载购物车中的数据
                    this.loadMore();
                    this.$toast('删除成功');
                })
            })
            .catch(err=>{console.log(err)})
        },
        delItem(e){
            // 功能：删除购物车中指定的商品
            // 获取购物车id
            var id = e.target.dataset.id;
            // 交互提示用户是否删除指定的商品
            this.$messagebox.confirm('是否删除指定商品'),then(
                res=>{
                    // 同意，发送ajax  del?id=1
                    this.axios.get('del',{param:{id:id}}).then(res=>{
                        // 重新调用 loadMore(),最新购物类表查询
                        if(res.data.status==1){
                            this.$toast('删除成功');
                            this.loadMore();
                        }
                    })
                }
            )
            .cath(err=>{

            })
        },
        loadMore(){
            //功能：加载购物车中数据
            // 当组件创建成功后调用
            this.axios.get('cart').then(res=>{
                console.log(res.data);
                if(res.data.code==-1){
                    this.$messagebox('消息','请登录').then(res=>{
                        this.$router.push('/login');
                        return;
                    })
                }else{
                    this.list=res.data.data;
                    // 4创建循环遍历数组并且为每个元素添加cd属性表示商品前复选框的状态
                    // 加载之前先清空一下
                    this.$store1.commit('clear');
                    // 注意：先添加 cd属性，再赋值list 顺序
                    for(var item of list){
                        // 添加cb属性表示状态
                        item.cb=false;
                        // 修改共享购物车中数量值vuex
                        this.$store1.commit('increment');
                    }
                    // 5 保存购物车数据
                    this.list = list;
                }
            })
        }
=======
	components: {
		"showlist":showlist,
		"my-recommend":recommend,
>>>>>>> 583bd549efe3d968bef122840423566caddcd374
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
