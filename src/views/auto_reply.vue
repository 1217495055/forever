<template>
    <div class="kefu_container">
        <mt-header title="客服" style="background:#ff6600;border-bottom:1px solid #bbb;height:52px;color:#fff;top:0rem;;border-top-left-radius:8px;border-top-right-radius:8px;font-size:14px;">  
            <mt-button slot="right" @click="btn1()" style="display:inline-block;text-indent:5px;" class='mui-icon mui-icon-arrowdown'>关闭</mt-button>
        </mt-header>
    
        <ul class="content" ref="charView">
            <li v-for="(item, i) of messageList" :key="i">
                <span :class="'span'+(item.myself?'right':'left')">{{item.message}}</span>
            </li>
        </ul>
      
        <div class="footer">
            <span class='mui-icon-extra mui-icon-extra-like'></span>
            <input id="text" type="text" v-model.trim="inputValue" @keyup.enter='chat' placeholder="请输入">
            <span id="btn" @click="btn2()">发送</span>
        </div>
    </div>
</template>

<script>
import $ from 'jquery'
var content  = $(".content")

export default{
    name:'Kefu',
    data() {
        return {
             //输入的内容,事先约定好的
            inputValue: '',
            //聊天的数组内容
            messageList: []
        }
    },//点击回车时候发送信息
    methods: {
        chat() {
            var _this=this;
            this.messageList.push({
                message: this.inputValue,
                //这个是判断当前是否是自己输入的内容,自己的是true,机器人的是false
                myself: true
            })
            //每次发送信息之后机器人就要回复,所以添加完之后直接调用机器人的接口
            $.ajax({
                url: 'http://www.tuling123.com/openapi/api',
                type: 'post',
                data: {
                    key: 'e5e78db64c3744fda06533e6729737da',
                    info: this.inputValue,
                    box:""
                },
                success: (data) => {
                    // console.log(data);
                    this.messageList.push({
                        message: data.text,
                        myself: false
                        
                    });
                    _this.$refs.charView.scrollTop+=999;
                }
            })
        this.inputValue=""
        },
        btn1(){
            this.$router.go(-1)
        },
        btn2(){
            
            this.messageList.push({
                message: this.inputValue,
                //这个是判断当前是否是自己输入的内容,自己的是true,机器人的是false
                myself: true
            })
            //每次发送信息之后机器人就要回复,所以添加完之后直接调用机器人的接口
            $.ajax({
                url: 'http://www.tuling123.com/openapi/api',
                type: 'post',
                data: {
                    key: 'e5e78db64c3744fda06533e6729737da',
                    info: this.inputValue
                },
                success: (data) => {
                    // console.log(data);
                    this.messageList.push({
                        message: data.text,
                        myself: false
                    });
                }
            })                             
        this.inputValue=""
        }
    },
    mounted() {
        this.box=this.$refs.charView;
    },
}
</script>
<style scoped="">
.kefu_container{
    width: 100vw;
    height: 100vh;
    background: #eee;
    position: relative;
    box-shadow: 20px 20px 55px #777;
}
.kefu_container .header {
    background: #000;
    height: 40px;
    color: #fff;
    line-height: 34px;
    font-size: 20px;
    padding: 0 10px;
}
.kefu_container .footer{
    position: absolute;
    display: flex;
    right: 0;
    bottom: 0;
    left: 0;
    z-index: 2;
    width: 100%;
    height: 50px;
    background-color: #fff;
    box-shadow: 0 -1px 0 0 rgba(0,0,0,.04), 0 -2px 0 0 rgba(0,0,0,.01);
    
}
.kefu_container .footer input {
    display: block;
    width: 100%;
    height: 100%;
    padding: 5px;
    overflow-x: hidden;
    overflow-y: auto;
    resize: none;
    outline: 0;
    border: 0;
    word-break: break-all;
    font-size: 14px;
    margin-bottom: 0px !important;
}

.kefu_container .footer span {
    margin-top: 10px;
    width:15%;
    display: inline-block;
    width: 20vw;
    color:#858e99;
    font-weight: 900;
    line-height: 32px;
    cursor: pointer;
    text-align: center;
    border-radius: 6px;
}
.kefu_container .footer span:hover {
    color: #fff;
}
.kefu_container #user_face_icon {
    display: inline-block;
    background: red;
    width: 60px;
    height: 60px;
    border-radius: 30px;
    cursor: pointer;
    overflow: hidden;
}
.kefu_container img {
    width: 60px;
    height: 60px;
}
.kefu_container .content {
    font-size: 14px;
    width: 100%;
    height: 500px;
    overflow: auto;
    margin-top: .2rem;
    padding:5%;
}
.kefu_container .content li {
    margin-top: 10px;
    display: block;
    clear: both;
    overflow: hidden;
}
.kefu_container.content li img {
    float: left;
}
.kefu_container.content li span{
    background: #7cfc00;
    padding: 10px;
    border-radius: 10px;
    float: left;
    margin: 6px 10px 0 10px;
    max-width: 310px;
    border: 1px solid #ccc;
    box-shadow: 0 0 3px #ccc;
    word-break: break-all ;
}
.content li span.spanleft { 
    float: left;
    background: #fff;
    padding:2px 4px;
    border-radius: 3px;
}
.content li span.spanright { 
    float: right;
    background: #7cfc00;
    padding:2px 4px;
    border-radius: 3px;
} 
</style>