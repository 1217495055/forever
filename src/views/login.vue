<template>
    <div class='login' v-if='flag'>
        <!-- X -->
        <div class='close' @click='close'><span class='mui-icon mui-icon-closeempty'></span></div>
        <!-- logo -->
        <div class='logo'><p>Hua.com花礼网</p></div>
        <!-- 登录信息 -->
        <div class='info'>
            <!-- 1 用户名输入框 -->
            <div><input :placeholder="unameholder" v-model='uname' type='text' maxlength="12"><i v-show='uname?true:false' @click='reset1'>x</i></div>
            <!-- 2密码输入框 -->
            <div><input :placeholder="upwdholder" v-model='upwd' type='text' v-if='check' maxlength="18"><input :placeholder="upwdholder" v-model='upwd' type='password' v-else maxlength="18"><i v-show='upwd?true:false' @click='reset2'>x</i><img :src='status' @click='chang' class='show_img'>
            </div>
            <!-- 3 登录按钮 -->
            <a href='javascript:;' @click='login' v-text="text1"></a>
            <!-- 登录  注册 -->
            <div class='logon_reg'>
                <div><a href="javascript:;" v-text='pass1' @click='jump'>{{}}</a></div>
                <div><router-link to="/register" @click.prevent='regis'>注册></router-link></div>
            </div>
            <!-- QQ 支付宝 -->
            <div class='qq'>
                <div @click='qq'><span class='icon'></span>QQ</div>
                <div></div>
                <div @click='zhifubao'><span class='icon zfb'></span>支付宝</div>
            </div>
        </div>
    </div>
    <div class='login' v-else>
        <!-- X -->
        <div class='close' @click='close'><span class='mui-icon mui-icon-closeempty'></span></div>
        <!-- logo -->
        <div class='logo'><p>Hua.com花礼网</p></div>
        <!-- 登录信息 -->
        <div class='info'>
            <!-- 1 手机号输入框 -->
            <div><input :placeholder="phoneholder" v-model='phone' type='text' maxlength="11"><i   v-show='phone?true:false' @click='reset3'>x</i></div>
            <!-- 2验证码输入框 -->
            <div><input :placeholder="valholder" v-model='val' type='text' maxlength="6"><i v-show='val?true:false' @click='reset4'>x</i><span class='val' @click='getval' v-text="msg"></span>
            </div>
            <!-- 3 登录按钮 -->
            <a href='javascript:;' @click='login' v-text="text" @keyup.13='login'></a>
            <!-- 登录  注册 -->
            <div class='logon_reg'>
                <div><a href="javascript:;" v-text='pass' @click='jump'></a></div>
                <div><router-link to="/register" @click.prevent='regis'>注册></router-link></div>
            </div>
            <!-- QQ 支付宝 -->
            <div class='qq'>
                <div @click='qq'><span class='icon'></span>QQ</div>
                <div></div>
                <div @click='zhifubao'><span class='icon zfb'></span>支付宝</div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data(){
        return{
            flag:true,
            unameholder:'用户名(6-12)位字母数字',  // 用户名提示
            upwdholder:'密码(6-18)位字母数字',   //密码提示
            uname:'',    //用户名
            upwd:'',       //密码
            check:false,
            status:require('../img/yincang.png'),
            pass:'账号密码登录>',
            phoneholder:'请输入11位手机号',  // 用户名提示
            valholder:'请输入6位验证码',   //密码提示
            phone:'',    //手机号
            val:'',       //验证码
            status:require('../img/yincang.png'),
            pass1:'手机号码登录>',
            text:'手机登录／注册',
            text1:'登录',
            code:'',    //验证码
            msg:'获取验证码',
            chars : 'abQ0cdSWeNfEDg1hiFR2TGjk3MHYUlmJ4InKop5OLqPr6ZstXAu7Cv8wV9xByz',
        }
        
    },
    methods:{
        qq(){
            this.$router.push('/login/qq')
        },
        zhifubao(){
            this.$router.push('/login/zhifubao')
        },
        getval(){
            if(!this.phone){this.$toast('手机号不能为空');return};
            this.code='';
            for(var i=0;i<6;i++){
                this.code += this.chars[Math.floor(Math.random()*62)];
            }
            this.msg=this.code;
        },
        jump(){
            this.check=false;
            if(this.flag){
                this.flag=false;
            }else{
                this.flag=true;
            }
        },
        chang(){
            this.check = this.check?false:true;
            this.status = this.check?require('../img/xianshi.png'):require('../img/yincang.png');   
        },
        // 关闭按钮
        close(){
            this.$router.push('/');
        },
        reset1(val){
            this.uname='';
        },
        reset2(){
            this.upwd='';
        },
        reset3(){
            this.phone='';
        },
        reset4(){
            this.val='';
        },
        // 登录
        login(){
            // 完成用户登录操作，1 获取用户输入用户名 2 获取用户输入密码 3 创建正则表达式验证用户名和密码 6——18为字母数字
            // 如果login为真，则验证用户名，密码
            if(this.flag){
                // 4 用户名，密码正则 提示消息
                this.uname = this.uname.trim();
                this.upwd = this.upwd.trim();
                if(!this.uname){this.$toast('用户名不能为空');return};
                if(!this.upwd){this.$toast('密码不能为空');return};
                if(this.uname.length<6){this.$toast('用户名至少六位');return};
                if(this.upwd.length<6){this.$toast('密码至少六位');return};
                if((/^\d{6,12}$/.test(this.uname))||(/^[a-zA-Z]{6,12}$/.test(this.uname))){this.$toast('用户名必须包含字母和数字');return};
                if((/^\d{6,18}$/.test(this.upwd))||(/^[a-zA-Z]{6,18}$/.test(this.upwd))){this.$toast('密码必须包含字母和数字');return};
                // 发送ajax请求
                var obj = {uname:this.uname,upwd:this.upwd}
                this.axios.get('login',{params:obj}).then(res=>{
                    // 7 获取服务器返回结果，  7.1 登录失败，提示   7.2 登录成功，跳转商品首页
                    if(res.data.status==0){
                        this.$toast('登录成功');
                        setTimeout(function(){
                            this.$router.push('/product');
                        },400);
                    }else{
                        this.$toast('用户名或密码错误');
                    } 
                });  
            // 如果login为假，则执行手机号验证
            }else{
                this.phone = this.phone.trim();
                this.val = this.val.trim();
                if(!this.phone){this.$toast('手机号不能为空');return};
                if(!this.val){this.$toast('请输入验证码');return};
                if(this.val!=this.code.toLowerCase()){this.$toast('验证码输入错误');return};
                // 4 用户验证失败 提示段消息 5 密码验证失败，提示段消息   6 发送ajax请求
                if(/^1[3-8]\d{9}$/.test(this.phone)){
                    var obj = {phone:this.phone}
                    this.axios.get('phone',{params:obj}).then(res=>{
                        // 7 获取服务器返回结果，  7.1 登录失败，提示   7.2 登录成功，跳转商品首页
                        if(res.data.status==0){
                            this.$toast('登录成功');
                            setTimeout(function(){
                                this.$router.push('/product');
                            },400); 
                        }else{
                            this.$toast('该手机号未注册,请前往注册页面');
                        } 
                    });
                }else{
                    this.$toast('请输入合法的手机号');
                } 
            }
        }
    },
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
.login .close>.mui-icon {
    font-size: 42px;
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
.login .info>a{
    display: block;
    margin-top: 30px;
    width:100%;
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
    width:0.88rem;
    height:0.88rem;
    position: absolute;
    top:0.32rem;
    right:1.84rem;
}
.login .logon_reg{
    display: flex;
    justify-content: space-between;
    justify-items: center;
    height: 1.45rem;
    font-size: 0.6rem;
    margin-top: 1.25rem;
}
.login .logon_reg a{
    color:#71797f;
}
.login .qq{
    display: flex;
    justify-content: space-around;
    color:#71797f;
    margin-top: 2rem;
    text-align: center;
}
.login .qq div:nth-child(2){
    border-right: 1px solid #babdc0;
    height:0.75rem;
    margin-top:0.3rem;
}
.login .qq .icon{
    display: inline-block;
    background: url('../img/qq.png') no-repeat;
    width:1rem;
    height:1rem;
    margin-right:0.25rem;
    position: relative;
    top:8px;
    left:2px;
}
.login .qq div:not(:nth-child(2)){
    width:45%;
}
.login .qq .zfb{
     background: url('../img/zfb.png') no-repeat;
     top:8px;
}
.login .val{
    display: inline-block;
    position: absolute;
    top: -0.1rem;
    right: 1.84rem;
    width: 72px;
    height: 44px;
    line-height: 44px;
    color: #71797f;
    font-size: 13px;
}
</style>


