<template>
    <div class='login'>
        <!-- X -->
        <div class='close' @click='close'>X</div>
        <!-- logo -->
        <div class='logo'><p>Hua.com花礼网</p></div>
        <!-- 登录信息 -->
        <div class='info'>
            <!-- 1 用户名输入框 -->
            <div><input :placeholder="unameholder" v-model='uname' type='text'><i   v-show='uname?true:false' @click='reset1'>x</i></div>
            <!-- 2密码输入框 -->
            <div><input :placeholder="upwdholder" v-model='upwd' type='text' v-if='check'><input :placeholder="upwdholder" v-model='upwd' type='password' v-else><i v-show='upwd?true:false' @click='reset2'>x</i><img :src='status' @click='chang' class='show_img'>
            </div>
            <!-- 3 登录按钮 -->
            <a href='javascript:;' @click='login'>手机登录／注册</a>
        </div>
    </div>
</template>

<script>
export default {
    data(){
        return{
            unameholder:'请输入用户名',  // 用户名提示
            upwdholder:'请输入密码',   //密码提示
            uname:'',    //用户名
            upwd:'',       //密码
            check:false,
            status:require('../img/yincang.png'),
        }
        
    },
    methods:{
        chang(){
            this.check = this.check?false:true;
            this.status = this.check?require('../img/xianshi.png'):require('../img/yincang.png');   
        },
        // 关闭按钮
        close(){
            this.$router.push('/');
        },
        reset1(){
            this.uname='';
        },
        reset2(){
            this.upwd='';
        },
        // 登录
        login(){
            // 完成用户登录操作，1 获取用户输入用户名 2 获取用户输入密码 3 创建正则表达式验证用户名和密码 3——12为字母数字
            // if(!(/^[0-9a-z]{3,12}&/i.test(this.uname))){
            //     this.$toast('用户名格式不正确');
            //     return;
            // }

            // if(!(/^[0-9a-z]{3,12}&/i.test(this.upwd))){
            //     this.$toast('密码格式不正确');
            //     return;
            // }
            // 4 用户验证失败 提示段消息 5 密码验证失败，提示段消息   6 发送ajax请求
            var obj = {uname:this.uname,upwd:this.upwd}
            this.axios.get('login',{params:obj}).then(res=>{
                console.log(res)
            })
            // 7 获取服务器返回结果，  7.1 登录失败，提示   7.2 登录成功，跳转商品首页
            
        }
    }
}
</script>


<style>
@import url('../../public/css/reset.css');
.login{
    width:100%;
}
.login .close{
    width:25%;
    height:32px;
    color:#b2b4b6;
    font-size: 26px;
    margin-left: 4%;
    margin-top: 2%;
}
.login .logo{
    text-align: center;
    height:84px;
}
.login .logo p{
    color:#fa7552;
    font-size: 28px;
    font-weight: bold;
    line-height: 84px;
}
.login .info{
    width:100%;
    padding:0 20px;
    text-align: center;
}
.login .info>div{
    position: relative;
}
.login .info input{
    border:0;
    border-bottom:1px solid rgba(0,0,0,.2) !important;
    padding-left:4px;
    font-size: 14px;
    color:#232628;
}
.login .info input::placeholder{
    color:rgb(187, 184, 184);
}
.login .info i{
    color:#fff;
    text-align: center;
    line-height: 11px;
    background-color: #999;
    display: block;
    width:12px;
    height:12px;
    position: absolute;
    top:14px;
    right:6%;
    border-radius: 50%;
}
.login .info a{
    display: block;
    margin-top: 30px;
    width:80%;
    height: 46px;
    line-height: 46px;
    text-align: center;
    color: #fff;
    background: #ff734c;
    border: 1px solid #ff734c;
    font-size: 16px;
    box-shadow: 0 4px 8px 0 #ffb6a2;
    border-radius: 100px;
    outline: none;
    font-weight: bold;
}
.login .show_img{
    width:22px;
    height:22px;
    position: absolute;
    top:8px;
    right:46px;
}
</style>


