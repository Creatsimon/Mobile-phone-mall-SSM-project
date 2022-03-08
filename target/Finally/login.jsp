<%--
  Created by IntelliJ IDEA.
  User: Simon
  Date: 2021/12/6
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
    request.setAttribute("basePath",basePath);
%>

<html>
<head>

    <meta charset="utf-8">
    <link rel="stylesheet" href="${basePath}layui/css/layui.css">
    <script src="${basePath}layui/layui.js"></script>
    <script src="${basePath}js/jquery-3.5.1.min.js"></script>
    <style>
        * {
            box-sizing:border-box;
        }
        body {
            font-family:'Montserrat',sans-serif;
            background:#f6f5f7;
            display:flex;
            flex-direction:column;
            justify-content:center;
            align-items:center;
            height:100vh;
            margin:-20px 0 50px;
        }
        h1 {
            font-weight:bold;
            margin:0;
        }
        p {
            font-size:14px;
            line-height:20px;
            letter-spacing:.5px;
            margin:20px 0 30px;
        }
        span {
            font-size:12px;
        }
        a {
            color:#333;
            font-size:14px;
            text-decoration:none;
            margin:15px 0;
        }
        .dowebok {
            background:#fff;
            border-radius:10px;
            box-shadow:0 14px 28px rgba(0,0,0,.25),0 10px 10px rgba(0,0,0,.22);
            position:relative;
            overflow:hidden;
            width:768px;
            max-width:100%;
            min-height:480px;
        }
        .form-container form {
            background:#fff;
            display:flex;
            flex-direction:column;
            padding:0 50px;
            height:100%;
            justify-content:center;
            align-items:center;
            text-align:center;
        }
        .social-container {
            margin:20px 0;
        }
        .social-container a {
            border:1px solid #ddd;
            border-radius:50%;
            display:inline-flex;
            justify-content:center;
            align-items:center;
            margin:0 5px;
            height:40px;
            width:40px;
        }
        .social-container a:hover {
            background-color:#eee;
        }
        .form-container input {
            background:#eee;
            border:none;
            padding:12px 15px;
            margin:8px 0;
            width:100%;
            outline:none;
        }
        button {
            border-radius:20px;
            border:1px solid lightseagreen;
            background:lightseagreen;
            color:#fff;
            font-size:12px;
            font-weight:bold;
            padding:12px 45px;
            letter-spacing:1px;
            text-transform:uppercase;
            transition:transform 80ms ease-in;
            cursor:pointer;
        }
        button:active {
            transform:scale(.95);
        }
        button:focus {
            outline:none;
        }
        button.ghost {
            background:transparent;
            border-color:#fff;
        }
        .form-container {
            position:absolute;
            top:0;
            height:100%;
            transition:all .6s ease-in-out;
        }
        .sign-in-container {
            left:0;
            width:50%;
            z-index:2;
        }
        .sign-up-container {
            left:0;
            width:50%;
            z-index:1;
            opacity:0;
        }
        .overlay-container {
            position:absolute;
            top:0;
            left:50%;
            width:50%;
            height:100%;
            overflow:hidden;
            transition:transform .6s ease-in-out;
            z-index:100;
        }
        .overlay {
            background:lightseagreen;
            background:linear-gradient(to right,lightseagreen,lightseagreen) no-repeat 0 0 / cover;
            color:#fff;
            position:relative;
            left:-100%;
            height:100%;
            width:200%;
            transform:translateY(0);
            transition:transform .6s ease-in-out;
        }
        .overlay-panel {
            position:absolute;
            top:0;
            display:flex;
            flex-direction:column;
            justify-content:center;
            align-items:center;
            padding:0 40px;
            height:100%;
            width:50%;
            text-align:center;
            transform:translateY(0);
            transition:transform .6s ease-in-out;
        }
        .overlay-right {
            right:0;
            transform:translateY(0);
        }
        .overlay-left {
            transform:translateY(-20%);
        }
        /* Move signin to right */
        .dowebok.right-panel-active .sign-in-container {
            transform:translateY(100%);
        }
        /* Move overlay to left */
        .dowebok.right-panel-active .overlay-container {
            transform:translateX(-100%);
        }
        /* Bring signup over signin */
        .dowebok.right-panel-active .sign-up-container {
            transform:translateX(100%);
            opacity:1;
            z-index:5;
        }
        /* Move overlay back to right */
        .dowebok.right-panel-active .overlay {
            transform:translateX(50%);
        }
        /* Bring back the text to center */
        .dowebok.right-panel-active .overlay-left {
            transform:translateY(0);
        }
        /* Same effect for right */
        .dowebok.right-panel-active .overlay-right {
            transform:translateY(20%);
        }
    </style>

    <script type="text/javascript">
        //onblur失去焦点事件，用户离开输入框时执行 JavaScript 代码：
        //身份证号格式
        function validate_idcard(idcard) {
            var idcardReg = /^[1-9]\d{5}(18|19|20|(3\d))\d{2}((0[1-9])|(1[0-2]))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/;

            if (idcard != "" && idcard.search(idcardReg) != -1) {
                document.getElementById("test_idcard").innerHTML = "<font color='green' size='3px'>√身份证号格式正确</font>";
            }else {
                document.getElementById("test_idcard").innerHTML = "<font color='red' size='3px'>身份证号不能为空</font>";
            }

        }
        //函数1：验证用户名格式
        function validate_username(username) {

            if (username != "") {
                document.getElementById("test_user").innerHTML = "<font color='green' size='3px'>√用户名正确</font>";
            } else {
                document.getElementById("test_user").innerHTML = "<font color='red' size='3px'>用户名错误</font>";
            }
        }

        //函数2：验证密码是否符合要求
        function validate_password(password) {
            //^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6-10}$
            var passwordReg = /^[a-zA-Z]\w{5,17}$/;
            if (password != "" && password.search(passwordReg) != -1) {
                document.getElementById("test_pw").innerHTML = "<font color='green' size='3px'>√密码格式正确</font>";
            } else {
                document.getElementById("test_pw").innerHTML = "<font color='red' size='3px'>亲，您输入的密码格式有误哦</font>";
                // alert("密码由数字和字母组成!");
            }
        }

        //函数3：验证两次输入的密码是否一样
        function chexkPassword() {
            var password = document.getElementById("regPassword").value;
            var twicePassword = document.getElementById("regPasswordTwice").value
            if (password!=twicePassword){
                layer.msg('两次输出的密码不一致', {
                    icon: 2,
                    time: 2000 //2秒关闭（如果不配置，默认是3秒）
                }, function (){
                });

            }
        }
    </script>

    <script>


        function doLogin() {
            $.ajax({
                url:"${basePath}user/login",
                type:"get",
                data:$("#loginForm").serialize(),
                success:function (result) {
                    if (result==0){
                        layer.msg('用户不存在', {
                            icon: 2,
                            time: 2000 //2秒关闭（如果不配置，默认是3秒）
                        }, function(){
                        });
                    }else if(result==2){
                        layer.msg('密码错误', {
                            icon: 2,
                            time: 2000 //2秒关闭（如果不配置，默认是3秒）
                        }, function(){
                        });
                    }else if(result==1){
                        layer.msg('登录成功', {
                            icon: 1,
                            time: 2000 //2秒关闭（如果不配置，默认是3秒）
                        }, function(){
                            location.href="${basePath}"
                        });
                    }
                }
            })
        }

        function reg() {
            var password = document.getElementById("regPassword").value;
            var twicePassword = document.getElementById("regPasswordTwice").value
            var username = document.getElementById("regUsername").value
            if (password!=twicePassword){
                layer.msg('两次输入的密码不一致无法注册', {
                    icon: 2,
                    time: 2000 //2秒关闭（如果不配置，默认是3秒）
                }, function(){
                });
            }else if(username==""){
                layer.msg('用户名为空无法注册', {
                    icon: 2,
                    time: 2000 //2秒关闭（如果不配置，默认是3秒）
                }, function(){
                });
            }else{
                doReg()
            }
        }

        function doReg() {
            $.ajax({
                url:"${basePath}user/reg",
                type:"post",
                data:$("#regForm").serialize(),
                success:function (result) {
                    if (result==1){
                        layer.msg('注册成功，快去登录吧', {
                            icon: 1,
                            time: 2000 //2秒关闭（如果不配置，默认是3秒）
                        }, function(){
                        });
                    }else if(result==0){
                        layer.msg('服务器错误，请稍后再试！', {
                            icon: 2,
                            time: 2000 //2秒关闭（如果不配置，默认是3秒）
                        }, function(){
                        });
                    }
                }
            })
        }

    </script>

    <title>登录</title>
</head>

<body>

<div class="dowebok" id="dowebok">
    <div class="form-container sign-up-container">
        <form id="regForm">
            <h1>注册</h1>
            <span>请输入您的信息</span>
            <input type="text" id="regUsername" name="username" placeholder="用户名"
                   onblur="">

            <input type="password" id="regPassword" name="password" placeholder="密码"
                   onblur="validate_username(this.value)">

            <input type="password" id="regPasswordTwice" name="passwordTwice" placeholder="请再次输入密码"
                   onblur="chexkPassword()">

            <input type="text" id="phoneNumber" name="phoneNumber" placeholder="手机号码">

            <button type="submit" onclick="reg()">注册</button>
        </form>
    </div>
    <div class="form-container sign-in-container">
        <form id="loginForm">
            <h1>登录</h1>
            <span>或使用您的帐号</span>
            <input type="text" id="username" name="username" placeholder="用户名">
            <input type="password" id="password" name="password" placeholder="密码">
            <a href="###">忘记密码？</a>

                <button type="submit" onclick="doLogin()">登录</button>

        </form>
    </div>
    <div class="overlay-container">
        <div class="overlay">
            <div class="overlay-panel overlay-left">
                <h1>已有帐号？</h1>
                <p>请使用您的帐号进行登录</p>
                <button class="ghost" id="signIn">登录</button>
            </div>
            <div class="overlay-panel overlay-right">
                <h1>还没有帐号？</h1>
                <p>立即注册加入我们，和我们一起开始旅程吧</p>
                <button class="ghost" id="signUp">注册</button>
            </div>
        </div>
    </div>
</div>


<script>

    $(      //页面加载完执行
        $("#loginForm").on("submit",function () {    //表单提交时监听提交事件
            return false;   //  必须返回false，才能跳到想要的页面
        })
    )

    $(      //页面加载完执行
        $("#regForm").on("submit",function () {    //表单提交时监听提交事件
            return false;   //  必须返回false，才能跳到想要的页面
        })
    )

    var signUpButton = document.getElementById('signUp')
    var signInButton = document.getElementById('signIn')
    var container = document.getElementById('dowebok')
    var loginButton = document.getElementById('login')

    signUpButton.addEventListener('click', function() {
        container.classList.add('right-panel-active')
    })

    signInButton.addEventListener('click', function() {
        container.classList.remove('right-panel-active')
    })

</script>

</body>
</html>
