<template>
        <!-- 顶部 Header 区域 -->
    <div class='my_header'>
        <div class='clealfix'>
            <a href="javascript:;"><img src="../img/01.png" alt=""></a>
            <a href="javascript:;">Hua.com花礼网</a>
            <a href="javascript:;"><img src="../img/01.png" alt=""></a>
        </div>
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
    /* justify-content: space-between; */
    justify-content: space-around;
    position: fixed;
    width:100%;
    z-index: 999;
    top:0;
    text-align: center;
}
.my_header .clealfix{
    display: flex;
    justify-content: space-between;
    width:100%;
    height:32px;
    margin-top: 18px;
}
.my_header .clealfix a{
    color:#fa7552;
    font-size: 20px;
    font-weight: bold;
}
.my_header a>img{
    display: inline-block;
    background-color: #fff;
    width:40%;
    height:52%;
}
</style>
