<template>
    <div class='qq_page'>
        <div class='qq_header'>
            <div class='logo'><img src='../img/logo_upice.png'></div>
            <div class='title'>亿万用户已选择QQ帐号登录应用</div>
        </div>
        <div class='login'>一键登录</div>
        <div class='info'>
            <p>花礼网将获得以下权限:</p>
            <div class='info1'>√ 访问你的详细资料(必选)</div>
            <div class='info2'>√ 访问你的基础资料(必选)</div>
        </div>
        <div class='footer_info'>Copyright 2010-2019 Tencent.All Rights Reserved.</div>
    </div>
</template>


<script>
export default {
    
}
</script>

<style scoped>
.qq_page{
    width:100%;
    padding:40px 30px 30px;
    display: flex;
    flex-direction: column;
    text-align: center;
}
.qq_page .qq_header{
    height:9rem;
}
.qq_page .qq_header .logo{
    height:7rem;
}
.qq_page .qq_header .logo img{
    width: 4rem;
}
.qq_page .qq_header .title{
    color: #777;
    font-size: 14px;
    line-height: 1;
    margin-top: 16px;
    font-weight: 400;
}
.qq_page .login{
    height:1.5rem;
    color: rgb(255, 255, 255);
    background-color: rgb(18, 183, 245);
    margin: 12px 0;
    border-radius: 4px;
    font-size: 18px;
    line-height: 1.5rem;
}
.qq_page .info{
    height:6rem;
    margin-top: 1rem;
    text-align: left;
}
.qq_page .info>p{
    font-size: 14px;
    color: #000;
    margin-bottom: 9px;
    text-indent: 1px;
}
.qq_page .info>div{
    box-sizing: border-box;
    padding: 0.4rem 0.45rem;
    font-size: 12px;
    color: rgb(119, 119, 119);
    border: 1px solid rgb(219, 216, 216);
}
.qq_page .info .info1{
    border-top-left-radius: 5px;
    border-top-right-radius: 5px;
    border-bottom: 0;
}
.qq_page .info .info2{
    border-bottom-left-radius: 5px;
    border-bottom-right-radius: 5px;
}
.qq_page .footer_info{
    font-size: 12px;
    color: #bbb;
    position: fixed;
    bottom:0.5rem;
    z-index: 999;
}




</style>

