<template>
    <div class='detail recom'>
        <a href="javascript:;">
          <!-- 左边img -->
          <div class='img'>
            <img src="../img/1.jpg" alt="">
          </div>
          <!-- 右边content -->
          <div class='img_content'>
            <p>精品玫瑰礼盒：19枝红玫瑰，勿忘我0.1扎</p>
            <div class='pri_shop'>
              <div class='price'><span>￥234<i>￥315</i></span><span>已销售6.4万件</span></div>
              <div class='shopcart'><img src="../img/02.png" alt=""></div>
            </div>
          </div>
        </a>
        <a href="javascript:;">
          <!-- 左边img -->
          <div class='img'>
            <img src="../img/1.jpg" alt="">
          </div>
          <!-- 右边content -->
          <div class='img_content'>
            <p class='count'>精品玫瑰礼盒：19枝红玫瑰，勿忘我0.1扎</p>
            <span class='ret_count'>人气推荐</span>
            <div class='pri_shop'>
              <div class='price'><span>￥234<i>￥315</i></span><span>已销售6.4万件</span></div>
              <div class='shopcart'><img src="../img/02.png" alt=""></div>
            </div>
          </div>
        </a>
      </div>
</template>


<script>
export default {
    
}
</script>

<style>
.send_lover .detail>a{
     margin: 4px 6px;
     height:150px;
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
   }
   .send_lover .detail .img_content p:first-child{
     font-size: 12px;
   }
   .send_lover .detail .img_content p:nth-child(2){
     font-size: 8px;
   }
   .send_lover .detail .img_content .top_bot{
     font-size: 8px;
     margin: 3px 0;
     padding:3px 0;
     border-top:1px solid #cccbcb;
     border-bottom:1px solid #cccbcb;
   }  
   .detail .img_content .price{
     width:70%;
     display: flex;
     flex-direction: column;
     font-size: 12px;
   }
   .detail .img_content .price i{
      text-decoration:line-through;
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
   }
   .detail.recom>a{
     width:48%;
     height:240px;
     display: flex;
     flex-direction: column;
     margin-left: 4px;
   }
   .detail.recom>a:nth-child(2n){
     margin-right:4px;
      margin-left: 0px;
   }
   .detail.recom>a .img{
     width:100%;
     height:160px;
   }
  .detail.recom .img_content{
    width:100%;
    padding: 0 6px;
  }
</style>

