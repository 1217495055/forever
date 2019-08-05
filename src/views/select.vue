<template>
        <!-- 选择我们 -->
    <div class='foot_select'>
      <div class='select'>为什么选择我们</div>
      <!-- 六宫格 -->
      <ul class="mui-table-view mui-grid-view mui-grid-9">
        <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><router-link to="/why">
          <img src="../img/m_details_brand_01.png" alt="">
          <div class="mui-media-body">获评龙头企业</div></router-link></li>
        <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><router-link to="/why">
          <img src="../img/m_details_brand_02.png" alt="">
          <div class="mui-media-body">1~3小时送花上门</div></router-link></li>
        <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><router-link to="/why">
          <img src="../img/m_details_brand_03.png" alt="">
          <div class="mui-media-body">冠军花艺师团队</div></router-link></li>
        <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><router-link to="/why">
          <img src="../img/m_details_brand_04.png" alt="">
          <div class="mui-media-body">严选花材</div></router-link></li>
        <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><router-link to="/why">
          <img src="../img/m_details_brand_05.png" alt="">
          <div class="mui-media-body">12道品控标准</div></router-link></li>
        <li class="mui-table-view-cell mui-media mui-col-xs-3 mui-col-sm-3"><router-link to="/why">
          <img src="../img/m_details_brand_06.png" alt="">
          <div class="mui-media-body">500万用户好评</div></router-link></li>
      </ul>
    </div>
</template>


<script>
export default {

}
</script>

<style scoped>
.index .foot_select{
      margin-bottom: 60px;
}
.foot_select{
  text-overflow: clip;
}
.foot_select li{
  width:33%;
}
.foot_select .select{
    font-size: 0.6rem;;
    padding: 20px 0 10px 0;
    text-align: center;
    font-weight: normal;
    color:#333;
}
.detail .mui-grid-view.mui-grid-9 img {
    width: 60px;
    height: 60px;
    border-radius: 50%;
}
.detail .mui-table-view.mui-grid-view .mui-table-view-cell .mui-media-body{
    font-size: 12px;
}
</style>

