<template>
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
            <mt-button @click='delMitem'>删除选中商品</mt-button>
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
                    // 注意：先添加 cd属性，再赋值list 顺序
                    for(var item of list){
                        item.id=false;
                    }
                    // 5 保存购物车数据
                    this.list = list;
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
