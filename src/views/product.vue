<template>
    <div class='product-app'>
        <!-- 创建空组件 -->
        <!-- 指定访问路径 /product  -->
        <!-- 在创建成功发送ajax -->
        <!-- 获取分页保存数据 -->
        <!-- 设计标签添加样式 -->

        <!-- 一个商品 循环 -->
        <div class='goods-item' v-for="(item,i) of list" :key='i'>
            <img :src='"http://127.0.0.1:3000/"+item.img_url' alt="">
            <h4>{{item.lname}}</h4>
            <div class='info'>
                {{item.price}}
            </div>
            <mt-button>加入购物车</mt-button>
        </div>
        <!-- 加载更多 -->
        <mt-button type='primary' size='large' @click='loadMore'>加载更多</mt-button>
    </div>
</template>

<script>
// import { parse } from 'path';
export default {
    data(){
        return{
            list:[],  //商品列表数组
            pno:0,   //页码(第几页)
        }
    },
    methods:{
        loadMore(){
            // 获取商品分页的数据
            // 1 发送请求
            this.pno++;
            this.axios.get('product',{params:{pno:this.pno}}).then(res=>{
                // 2 获取服务器返回结果
                // this.list = res.data.data;
                this.list = this.list.concat(res.data.data)
            })
        },
    },
    created(){
        this.loadMore();
    },
}
</script>

<style scoped>
.product-app{
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    padding: 4px;
}
.goods-item{
    width:49%;
    border:1px solod #ccc;
    border-radius: 5px;
    margin: 2px 0;
    padding: 2px;
    box-sizing: border-box;
    display: flex;
    flex-direction: column;
    min-height: 247px;
}
.goods-item img{
    width: 100%;
}
</style>