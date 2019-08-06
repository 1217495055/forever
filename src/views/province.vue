<template>
    <div class='detail_province dis_none'>
        <div class='detail_city'>
            <!-- 头部 -->
            <div class='city_title'>
                <div>配送至</div>
                <div class='mui-icon mui-icon-closeempty'></div>
            </div>
            <!-- 请选择 -->
            <div class='city_select'>
                <div class='active'>请选择</div>
                <div>请选择</div>
                <div>请选择</div>
            </div>
            <!-- 三级联动 -->
            <div class='pro_eara'>
                <ul>
                    <li>北京</li>
                    <li>北京</li>
                    <li>北京</li>
                    <li>北京</li>
                    <li>北京</li>
                    <li>北京</li>
                    <li>北京</li>
                    <li>北京</li>
                    <li>北京</li>
                    <li>北京</li>
                    <li>北京</li>
                </ul>
                <ul>
                    <li>北京</li>
                    <li>北京</li>
                    <li>北京</li>
                    <li>北京</li>
                    <li>北京</li>
                    <li>北京</li>
                    <li>北京</li>
                    <li>北京</li>
                    <li>北京</li>
                    <li>北京</li>
                    <li>北京</li>
                </ul>
                <ul>
                    <li>北京</li>
                    <li>北京</li>
                    <li>北京</li>
                    <li>北京</li>
                    <li>北京</li>
                    <li>北京</li>
                    <li>北京</li>
                    <li>北京</li>
                    <li>北京</li>
                    <li>北京</li>
                    <li>北京</li>
                </ul>
            </div>
        </div>
    </div>
</template>


<script>
export default {
    
}
</script>

<style scoped>
.detail_province .dis_none{
    display: block;
    z-index: 999999;
}
.detail_province{
    width:100%;
    height:100%;
    background-color: rgba(35, 38, 40, 0.8);
    position: absolute;
    display: none;
}
.detail_province .detail_city{
    width:100%;
    height:60%;
    background-color: #fff;
    position: absolute;
    bottom: 0;
}
.detail_province .city_title{
    width: 100%;
    height: 36px;
    line-height: 36px;
    font-size: 14px;
    text-align: center;
    display: flex;
}
.detail_province .city_title div:first-child{
        color: #FF734C;
        width:90%;
}
.detail_province .city_title div.mui-icon{
    font-size: 34px;
}
.detail_province .city_select{
    padding: 0 4px;
    border-bottom: 1px solid #F7F9FA;
    height:1.5rem;
    display: flex;
}
.detail_province .city_select div{ 
    color: #232628;
    font-size: 14px;
    width:20%;
    line-height: 36px;
    padding: 0 12px;
    font-size: 12px;
    text-align: center;
}
.detail_province .city_select div.active{
    color: #FF734C;
    font-weight: 500;
    border-bottom:1px solid #FF734C;
}
.detail_province .detail_city .pro_eara ul{
    overflow-x: hidden;
    overflow-y: auto;
    margin: 0;
    box-sizing: border-box;
    width: 20%;
}
.detail_province .detail_city .pro_eara{
    display: flex;
    width: 100%;
    height: 100%;
    padding: 16px;
}
.detail_province .detail_city .pro_eara ul>li{
    width: 100%;
    height: 36px;
    line-height: 36px;
    font-size: 12px;
}
</style>
