<template>
    <div class='send_lover'>
      <!-- 顶部灰色区域 -->
      <div class='gray'></div>
      <!-- 标题 -->
      <div class='title'>
        <p v-text='title'></p>
      </div>
      <div class='detail' v-for='(item,i) of list' :key='i'>
        <a href="javascript:;">
          <!-- 左边img -->
          <div class='img'>
            <img :src='"http://127.0.0.1:3000"+item.img_url' alt="">
          </div>
          <!-- 右边content -->
          <div class='img_content' v-if='!item.title'>
            <p v-text='item.product_name'></p>
            <p v-text='item.descript'></p>
            <p class='top_bot' v-text='item.hot_title'></p>
            <div class='pri_shop'>
              <div class='price'><span v-cloak>¥{{item.price}}<i v-cloak>¥{{item.price_after}}</i></span><span v-cloak>已销售{{item.click}}件</span></div>
              <!-- <div class='shopcart'><img src="../img/gouwuche.png" alt=""></div> -->
              <div class='shopcart'><span class='mui-icon-extra mui-icon-extra-cart'></span></div>
            </div>
          </div>
          <!-- 右边content -->
          <div class='img_content' v-else>
            <p v-text='item.product_name'></p>
            <p class='count' v-text='item.descript'></p>
            <span class='ret_count' v-text='item.title'></span>
            <p class='top_bot' v-text='item.title'></p>
            <div class='pri_shop'>
              <div class='price'><span v-cloak>¥{{item.price}}<i v-cloak>¥{{item.price_after}}</i></span><span v-cloak>已销售{{item.click}}件</span></div>
              <!-- <div class='shopcart'><img src="../img/gouwuche.png" alt=""></div> -->
              <div class='shopcart'><span class='mui-icon-extra mui-icon-extra-cart'></span></div>
            </div>
          </div>
        </a>
      </div>
      <!-- 查看更多 -->
      <div class='more'>
        <a href="javascript:;">查看更多</a>
      </div>

    </div>
</template>


<script>
export default {
    props:{
      list:{default:''},
      title:{default:''},
  }
}
</script>



<style>
.detail .img_content  .shopcart .mui-icon-extra {
    font-size: 28px;
  }
.send_lover{
     margin-top: 10px;
   }
   .send_lover .gray{
    background-color: #ded6d6;
    height:8px;
   }
   .send_lover .title{
     height:50px;
     text-align: center;
     line-height: 50px;
   }
   .send_lover .title>p{
     color:#333;
   }
   .send_lover .detail>a{
     margin: 4px 8px;
     height:192px;
     box-shadow:0px 0px 4px #978e8e;
     border-radius: 3px;
     display: flex;
   }
   .send_lover .detail{
     margin-bottom:16px;
   }
   .send_lover .detail .img{
     width:50%;
   }
   .send_lover .detail .img img{
     width:100%;
     height: 100%;
   }
   .send_lover .detail .img_content{
     padding:4%;
     width: 50%;
     color:#666;
   }
   .send_lover .detail .img_content p:first-child{
     font-size: 14px;
     margin: 0.2rem 0;
   }
   .send_lover .detail .img_content p:nth-child(2){
     font-size: 2px;
     margin-bottom: 0.4rem;
     max-height: 1.5rem;
     overflow: hidden;
   }
   .send_lover .detail .img_content .top_bot{
     font-size: 12px;
     margin: 0.3rem 0;
     padding:5px 0;
     border-top:1px solid #cccbcb;
     border-bottom:1px solid #cccbcb;
     color:#333;
    margin-bottom: 0.4rem;
   }  
   .detail .img_content .price{
     width:70%;
     display: flex;
     flex-direction: column;
     font-size: 12px;
   }
   .detail .img_content .price>span:first-child{
      font-size: 0.7rem;
      color: #FF734C;
      font-weight: 500;
   }
    .detail .img_content .price>span:nth-child(2){
      font-size: 0.5rem;
      color:#666;
   }
   .detail .img_content .price i{
      text-decoration:line-through;
      color:#666;
      font-size: 12px;
      margin-left: 0.4rem;
   }
   .detail .img_content .shopcart{
     width:30%;
   }
   .detail .img_content .pri_shop{
     display: flex;
   }
   .detail .img_content .shopcart img{
     width:56%;
     height:56%;
     margin-top:6px; 
   }
   .detail .img_content .count{
     overflow: hidden;
     text-overflow: ellipsis;
     white-space: nowrap;
   }
   .detail .img_content .ret_count{
     border:1px solid orangered;
     color:orangered;
     font-size: 12px;
     padding:2px;
     border-radius: 6px;
   }
   .send_lover .more{
     height:36px;  
     text-align: center;
   }
   .send_lover .more a{
     margin-top:6px; 
     display: inline-block;
     border:1px  solid #796565;
     border-radius: 6px;
     width: 20%;
     height:26px;
     text-align: center;
     line-height: 26px;
      /* align-items: center; */
     font-size: 12px;
   }
   .detail.recom{
     display: flex;
    flex-wrap: wrap;
   }
   .detail.recom>a{
     width:47%;
     height:300px;
     display: flex;
     flex-direction: column;
     margin-left: 4px;
   }
   .detail.recom>a:nth-child(2n){
     margin-right:4px;
      margin-left: 0px;
      width:48%;
   }
   .detail.recom>a .img{
     width:100%;
     height:190px;
   }
  .detail.recom .img_content{
    width:100%;
    padding: 0 6px;
  }
</style>



