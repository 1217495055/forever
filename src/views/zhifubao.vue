<template>
    <div class='zhifubao'>
        <h1 class='title'>
            <a href="javascript:;"><img src="../img/zhifubao1.png" alt=""></a>
            <a href="javascript:;">快捷登录</a>
        </h1>
        <hr>
        <div class='erweima'>
            <p>登录后，支付宝将与该网站共享您的登录名。</p>
            <div class='img'>
                <div class='top'>扫码登录 <span></span></div>
                <div class='center'>
                    <div><img src="../img/erweima.png" alt=""></div>
                    <p>请使用手机支付宝扫码</p>
                </div>
                <div class='bottom'>
                    <span>使用帮助</span>
                    <em>|</em>
                    <span>下载手机支付宝</span>
                </div>
            </div>
        </div>

        <div class='er'>
            <div class='footer_link'>
                <div>关于支付宝</div>
                <div>诚征英才</div>
                <div>联系我们</div>
                <div>International Business</div>
            </div>
            <div>About Alipay</div>
            <div>ICP证：沪B2-20150087</div>
        </div>
    </div>
</template>

<style scoped>
.zhifubao{
    width:100%;
    display: flex;
    flex-direction: column;
}
.zhifubao .title{
    display: flex;
    justify-content: flex-start;
    height: 40px;
    line-height: 40px;
    margin-top: 20px;
    margin-bottom: 30px;
}
.zhifubao .title a>img{
    width:4.5rem;
    height:1.5rem;
}
.zhifubao .title a:last-child{
    border-left: 1px solid gray;
    margin-left: 10px;
    padding-left: 10px;
    color: #706f6f;
    font-size: 20px;
}
.zhifubao hr{
    width:100%;
    margin: 0;
    border-top:1px solid #e9e5e5;
}
.zhifubao .erweima{
    width:90%;
    box-sizing: border-box;
    text-align: center;
    padding:2rem 0;
    margin-left: 0.7rem;
    margin-right:0.7rem;
}
.zhifubao .erweima>p{
    color: gray;
    font-size: 13px;
}
.zhifubao .erweima .img{
    width:11.5rem;
    height:11.5rem;
    margin: 0 1rem 1.1rem;
    padding-bottom: 0.8rem;
    position: relative;
    z-index: 10;
    border: 1px solid #CACACA;
    margin-top: 1.5rem;
    background-color: #fafafa;
}
.zhifubao .er{
    color:gray;
    position: fixed;
    bottom: 0px;
    width:88%;
    text-align: center;
    margin-bottom: 0.4rem;
}
.zhifubao .er>div{
    margin-bottom:0.2rem;
}
.zhifubao .er .footer_link{
    box-sizing: border-box;
    margin: 0 0.5rem 0.2rem;
    display: flex;
    justify-content: space-between;
}
.zhifubao .erweima .img .top{
    margin: 26px 31px 0 33px;
    text-align: center;
    color:#000;
    font-size: 18px;
}
.zhifubao .erweima .img .top>span{
    background: url('../img/saoma.png') no-repeat;
    background-position: -260px -260px;
    display: block;
    width:60px;
    height:60px;
    position: absolute;
    top:0;
    right:0;
}
.zhifubao .erweima .img .center{
    position: relative;
    margin: 0 auto;
    padding: 15px 0 0;
    text-align: center;
    width: 190px;
    height: 170px;
    zoom: 1;
}
.zhifubao .erweima .img .center>div{
    position: relative;
    width: 120px;
    height: 120px;
    padding: 7px;
    background: #fff;
    border: 1px solid #6c6c6c;
    margin: 5px auto;
    transition: all .6s cubic-bezier(0.25,.5,.5,.9);
    z-index: 100;
    zoom: 1;
}
.zhifubao .erweima .img .center img{
    width:104px;
    height:104px;
}
.zhifubao .erweima .img .center>p{
    color: #0AE;
    font-size: 13px;
    line-height: 24px;
    text-align: center;
    margin-bottom: 12px;
}
.zhifubao .erweima .img .bottom{
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
    font-size: 12px;
    margin-top: 12px;
    color: #0AE;
}
.zhifubao .erweima .img .bottom>em{
    margin: 0 0.5rem;
}
</style>
