<template>
    <div class='cart'>
        <!-- 顶部 -->
        <div class='cart_header'>
            <div><span  class='mui-icon mui-icon-arrowleft'></span></div>
            <div>购物车</div>
            <div></div>
        </div>
        <!-- 图片 -->
        <div class='cart_empy'>
            <img src="../img/m_emptycart.png" alt="">
            <p>这里什么都没有呀...</p>
        </div>
        <!-- 猜你喜欢 -->
        <div class='guess'>
            <div class='guess_live'>猜你喜欢</div>
        </div>
        <my-footer></my-footer>
    </div>
</template>


<script>
import footer from './footer'
export default {
    components: {
        "my-footer":footer,
    },
}
</script>

<style scoped>
.cart{
    width:100%;
    box-sizing: border-box;
}
.cart .cart_header{
    display: flex;
    justify-content: space-between;
    height:1.8rem;
    line-height: 1.8rem;
}
.cart .cart_header div{
    width:20%;
    text-align: center;
    font-size: 0.7rem;
}
.cart .cart_header div:nth-child(2){
    width: 60%;
}
.cart .cart_empy{
    width: 100%;
    border-top: 1px solid #E9ECF0;
    background-color: #fff;
    padding: 1.8rem 0 1.3rem;
    text-align: center;
    box-sizing:border-box;
    text-align: center;
}
.cart .cart_empy img{
    width: 4rem;
    height:4rem;
}
.cart .cart_empy p{
    margin-top: 0.65rem;
    color: #232628;
    font-size: 0.6rem;
}
.cart .guess{
    box-sizing: border-box;
    margin-top: 0.3rem;
    padding-bottom: 2rem;
    background-color: #fff;
}
.cart .guess .guess_live{
    height: 2.2rem;
    font-size: 0.65rem;
    color: #232628;
    padding: 0 1rem;
    line-height: 2.2rem;
}
</style>

