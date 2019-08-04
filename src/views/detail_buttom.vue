<template>
    <div class='detail_bottom'>
        <a href="javascript:;"><i class="iconfont icon-lianxi"></i><p>客服</p><span class="mui-badge mui-badge-warning">1</span></a>
        <a href="javascript:;"><i class="iconfont icon-gouwuche"></i><p>购物车</p><span class="mui-badge mui-badge-warning">2</span></a>
        <a href="javascript:;">加入购物车</a>
        <a href="javascript:;">立即购买</a>
    </div>
</template>

<script>
export default {

}
</script>

<style scoped>
.app-container {
  padding-top: 40px;
	padding-bottom: 50px;
  overflow-x: hidden;
}
.v-enter {
  opacity: 0;
  transform: translateX(100%);
}

.v-leave-to {
  opacity: 0;
  transform: translateX(-100%);
  position: absolute;
}

.v-enter-active,
.v-leave-active {
  transition: all 0.5s ease;
}
.detail_bottom{
    width:100%;
    height:2rem;
    display: flex;
    justify-content: space-around;
    align-items: center;
    position: fixed;
    z-index: 999;
    bottom: 0;
    background-color: #fff;
}
.detail_bottom>a{
    display: block;
    text-align: center;
    height: 1.8rem;
    padding-top:0.2rem; 
    box-sizing: border-box;
    height:100%;
    width: 20%;
    position: relative;
}
.detail_bottom>a:nth-child(3){
    width: 30%;
    background-color: #3D4D42;
    color: #fff;
    line-height: 1.6rem;
    font-size: 14px;
}
.detail_bottom>a:nth-child(4){
    width: 30%;
    background-color: #FF734C;
    color: #fff;
    line-height: 1.6rem;
    font-size: 14px;
}
.detail_bottom .icon-lianxi{
    font-size: 26px;
    position: absolute;
    left:24px;
}
.detail_bottom .mui-badge.mui-badge-warning{
    background-color: #FF734C !important;
    font-size: 0.4rem;
    position: absolute;
    top:4px;
    left: 42px;
}
.detail_bottom .icon-gouwuche{
    font-size: 18px;
}
.detail_bottom>a>p{
    font-size: 12px;
    position: absolute;
    top:28px;
    left:20px;
    color:#333;
}
.detail_bottom>a:first-child>p{
    left:24px;
}
</style>


