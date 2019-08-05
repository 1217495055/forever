<template>
    <div class='user_com'>
        <div class='user_title'>
            <div><img src="../img/avatar_default_10.jpg" alt=""></div>
            <div>小红*恰恰</div>
            <div>
                <span class='mui-icon mui-icon-star color-xing'></span>
                <span class='mui-icon mui-icon-star'></span>
                <span class='mui-icon mui-icon-star'></span>
                <span class='mui-icon mui-icon-star'></span>
                <span class='mui-icon mui-icon-star'></span>
            </div>
        </div>
        <div class='content'>包装精致，新鲜的花瓣上洒满了水滴，活力四射</div>
        <!-- 图片 -->
        <div class='con_img'><img src="../img/1.jpg" alt=""><img src="../img/1.jpg" alt=""><img src="../img/1.jpg" alt=""><img src="../img/1.jpg" alt=""></div>
        <!-- 地址 -->
        <div class='address'>
            <span class='mui-icon mui-icon-location'></span>
            <span>陕西咸阳市渭城区</span>
        </div>
        <!-- 查看更多评价 -->
        <div class='user_com_more'>
            <span>查看更多评价</span>
        </div>
    </div>
    
</template>

<script>
export default {
    
}
</script>

<style scoped>
.user_com{
    width:100%;
    display: flex;
    flex-direction: column;
    border-top:1px solid  #ddd;
        padding:12px 16px;
}
.user_com .user_title{
    display: flex;
    width:100%;
    height:20px;

}
.user_com .user_title div{
    width:10%;
    height:100%;
}
.user_com .user_title div:first-child img{
    width:20px;
    height:100%;
    border-radius: 50%;
}
.user_com .user_title div:nth-child(2){
    width: 70%;
}
.user_com .user_title div:nth-child(3){
    width: 20%;
    display: flex;
    justify-content: space-around;
}
.user_com .user_title div span.mui-icon{
    font-size: 12px;
}
.user_com .color-xing{
    color:#fe6600;
}
.user_com .content{
    width:100%;
    margin-top:0.5rem;
}
.user_com .con_img{
    width:100%;
    margin-top:0.5rem;
    display: flex;
    justify-content: space-around;
}
.user_com .con_img>img{
    width:23%;
    height:100%;
}
.user_com .address{
    margin-top:8px;
    color:#B4BABF;
}
.user_com .address .mui-icon{
    font-size: 16px;
    margin-right:0.3rem;
}
.user_com .user_com_more{
    width:100%;
    height:58px;
    box-sizing: border-box;
    padding:8px 0 1rem 0;
    text-align: center;
}
.user_com .user_com_more>span{
    border:1px solid #000;
    padding:4px 8px;
    border-radius: 3px;
}
</style>

