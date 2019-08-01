<template>
        <!-- 顶部 Header 区域 -->
    <div class='my_header'>
        <a href="javascript:;"><span class="iconfont icon-sousuo1"></span></a>
        <a href="javascript:;">Hua.com花礼网</a>
        <a href="javascript:;"><span class="iconfont icon-lianxi"></span></a>
    </div>
</template>

<script>
export default {
    

}
</script>

<style scoped>
.my_header{
    background-color: #375043;
    height:50px !important;
    display: flex;
    justify-content: space-between;
    position: fixed;
    width:100%;
    z-index: 999;
    top:0;
    text-align: center;
    line-height: 60px;
}
.my_header a:nth-child(2){
    color:#fa7552;
    font-size: 20px;
    font-weight: bold;
    margin:0 10%;
}
.my_header a:nth-child(1){
    margin-left:5%;
    margin-bottom: 3%;
}
.my_header a:nth-child(3){
    margin-right:5%;
}
.my_header a>span{
    display: inline-block;
    color: #fff;
}
.my_header .icon-sousuo1,.icon-lianxi{
    font-size: 24px;
    color:#fff;
}
.my_header .icon-lianxi{
    font-size: 32px;
}
</style>
