<%--
  Created by IntelliJ IDEA.
  User: Simon
  Date: 2021/12/30
  Time: 22:33
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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
          integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu"
          crossorigin="anonymous">

    <!-- import CSS -->
    <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
    <link rel="stylesheet" href="${basePath}layui/css/layui.css">
    <script src="${basePath}layui/layui.js"></script>
    <script src="${basePath}js/jquery-3.5.1.min.js"></script>
    <title>Title</title>

    <script type="text/javascript">

        function back() {
            location.href="${basePath}produce/de?produceNo=${produce.produceNo}"
        }

        function selectColor(obj){
            $.ajax({
                url:"${basePath}buy/color?colorId="+obj,
                type:"post",
                data:"",
                success:function (result){

                }
            })
        }

        function selectRam(obj) {
            $.ajax({
                url:"${basePath}buy/ram?ramId="+obj,
                type:"post",
                data:"",
                success:function (result){
                    //alert(result)
                    $("#price").empty()
                     $("#price").html("总计"+result+"元")
                    //price.append('<h2>'+result+'元'+'</h2>')
                }
            })
        }

        function buy() {

            top.window.location.href="${basePath}buy/buyPhone"
        }

        function addShoppingCat() {
            location.href="${basePath}buy/addShoppingCat"
        }

    </script>

</head>
<body>

<div id="app">
    <hr>
    <el-row>
        <el-col :span="24">
            <el-page-header onclick="back()" content="${produce.title}">
            </el-page-header>
        </el-col>
    </el-row>
    <br>
    <el-row>
        <el-col :span="10">
            <div class="layui-carousel" id="test1">
                <div carousel-item>
                    <c:forEach items="${lunboImgPaths}" var="lunboImgPaths">
                        <img src="${basePath}${lunboImgPaths.imgPath}" width="100%">
                    </c:forEach>
                </div>
            </div>
        </el-col>
        <el-col :span="1">
            <br>
        </el-col>
        <el-col :span="12">
            <div class="jumbotron" style="background:white">
                <h1>${produce.title}</h1>
                <br>
                <p>${produce.introduce}</p>
            </div>
            <div>
                <h3>选择颜色</h3>
                <br>
                <c:forEach items="${color}" var="color">
                    <el-radio v-model="radio1" label="${color.colorId}" border onclick="selectColor(${color.colorId})">${color.color}</el-radio>
                </c:forEach>
            </div>
            <br>
            <div>
                <h3>选择版本</h3>
                <br>
                <c:forEach items="${ram}" var="ram">
                    <el-radio v-model="radio2" label="${ram.ramId}" border onclick="selectRam(${ram.ramId})">${ram.ram}</el-radio>
                </c:forEach>
            </div>
            <div class="jumbotron" style="background: white; color: orangered">
                <h2 id="price"></h2>
            </div>
            <div>
                <el-button type="warning" onclick="addShoppingCat()">加入购物车</el-button>
                <el-button type="danger" onclick="buy()">立即购买</el-button>
            </div>
        </el-col>
        <el-col :span="1">
            <br>
        </el-col>
    </el-row>
</div>



<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"
        integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ"
        crossorigin="anonymous"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"
        integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd"
        crossorigin="anonymous"></script>

</body>

<!-- import Vue before Element -->
<script src="${basePath}vue/vue.js"></script>
<%--<script src="https://unpkg.com/vue/dist/vue.js"></script>--%>
<!-- import JavaScript -->
<script src="https://unpkg.com/element-ui/lib/index.js"></script>

<script>
    new Vue({
        el: '#app',
        data: function() {
            return { visible: false }
        },
        data () {
            return {
                radio1: '',
                radio2: '',
            };
        }
    })
</script>

<script>
    layui.use('carousel', function(){
        var carousel = layui.carousel;
        //建造实例
        carousel.render({
            elem: '#test1'
            ,width: '100%' //设置容器宽度
            ,height:'500px'
            ,arrow: 'always' //始终显示箭头
            //,anim: 'updown' //切换动画方式
        });
    });
</script>

</html>
