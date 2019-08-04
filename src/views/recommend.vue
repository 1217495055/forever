<template>
        <!-- 巧克力推荐 -->
    <div class='send_lover'>
      <!-- 顶部灰色区域 -->
      <div class='gray'></div>
      <!-- 标题 -->
      <div class='title'>
        <p v-text='title'></p>
      </div>
      <my-showlist :list='list'></my-showlist>
      <!-- 查看更多 -->
      <div class='more'>
        <a href="javascript:;">查看更多</a>
      </div>
    </div>
</template>


<script>
import showlist from './showlist'
export default {
    components: {
        "my-showlist":showlist,
    },
    props:{
      list:{default:''},
      title:{default:''},
  },
}
</script>


<style scoped>
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
    align-items: center;
    font-size: 12px;
}
</style>
