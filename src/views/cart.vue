<template>
    <div class='cart'>
        <!-- 全选 -->
        <div class='selectAll'>
            全选<input type="checkbox">
        </div>
        <!-- 购物车商品信息 -->
        <div v-for='(item,i) of list' :key='i' class='cart-item'>
            <div class='leftImgText'>
                <input type="checkbox">
                <img :src='"http://127.0.0.1:3000/"+item.img_url' alt="">
                <div class='lname'>{{item.lname}}</div>
                <div class='price'>{{item.price}}</div>
                
            </div>
            <mt-button>删除</mt-button>
        </div>
        <!-- 按钮，删除选中商品 -->
        <div>
            <mt-button>删除选中商品</mt-button>
            小计: <span></span>
        </div>
    </div>
</template>

<script>
export default {
    data(){
        return{
            list:[],
        }
    },
    methods:{
        delItem(){
            
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
                }
            })
        }
    },
    created(){
        this.loadMore();
    }
}
</script>


<style scoped>
/* 商品项目元素 */
.cart-item{
    display:flex;
    justify-content: space-between;
    /* 垂直居中 */
    align-items: center;
    border-bottom: 1px solid #ccc;
}
/* 左侧图片与文字 */
.leftImgText{
    display: flex;
    align-items: center;
}
/* 单独修改图片宽度和高度 */
.leftImgText img{
    width:50px;
    height:50px;
}
/* 商品价格 */
.price{
    margin-left: 25px;
    color:red;
}

</style>
