<%--
  Created by IntelliJ IDEA.
  User: Simon
  Date: 2021/12/26
  Time: 16:28
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


    <link rel="stylesheet" type="text/css" href="${basePath}layui/css/text1.css" />
    <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
    <!-- 清除样式CSS -->
    <link rel="stylesheet" href="${basePath}layui/css/reset.css">
    <link rel="stylesheet" href="${basePath}layui/css/layui.css">
    <script src="${basePath}layui/layui.js"></script>
    <script src="${basePath}js/jquery-3.5.1.min.js"></script>
    <title>Title</title>


    <script>
        function check(obj) {
            location.href="${basePath}produce/de?produceNo="+obj
        }
    </script>

</head>
<body>

<div id="app">

    <c:choose>
        <c:when test="${empty produces}">
        <el-empty description="没有找到商品"></el-empty>
        </c:when>
        <c:otherwise>
        <%--<div class="layui-row ">
            <div class="layui-col-md12 ">
                <img src="${basePath}img/xiaomi/K40Banners.jpg" width="100%">
            </div>
        </div>--%>
        <div class="layui-row content-desc">
            <div class="layui-col-md12 container">
                <div class="box-hd">

                </div>
                <!--内容-->
                <div class="box-bd">
                    <!-- clearfix清除浮动带来的影响 -->
                    <div class="row clearfix">
                        <div class="row-r">
                            <ul id="pro">
                                <c:forEach items="${produces}" var="produces">
                                    <li onclick="check('${produces.produceNo}')">
                                        <!--图片-->
                                        <div class="figure">
                                            <a href="">
                                                <a onclick="check('${produces.produceNo}')">
                                                    <img src="${basePath}${produces.imgPath}"/>
                                                </a>
                                            </a>
                                        </div>
                                        <!--标题-->
                                        <h3 class="title">
                                            <a href="#"></a>
                                                ${produces.title}
                                        </h3>
                                        <p class="desc">
                                                ${produces.describe}
                                        </p>
                                        <p class="price">
                                            <span class="num">${produces.price}</span>元起
                                        </p>
                                        <!--<div class="flag flag-new">新品</div>-->
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </c:otherwise>
    </c:choose>




<%--<div class="layui-row ">
    <div class="layui-col-md12 ">
        <img src="${basePath}img/xiaomi/K40Banners.jpg" width="100%">
    </div>
</div>
<div class="layui-row content-desc">
    <div class="layui-col-md12 container">
        <div class="box-hd">

        </div>
        <!--内容-->
        <div class="box-bd">
            <!-- clearfix清除浮动带来的影响 -->
            <div class="row clearfix">
                <div class="row-r">
                    <ul id="pro">
                        <c:forEach items="${produces}" var="produces">
                            <li onclick="check('${produces.produceNo}')">
                                <!--图片-->
                                <div class="figure">
                                    <a href="">
                                        <a onclick="check('${produces.produceNo}')">
                                            <img src="${basePath}${produces.imgPath}"/>
                                        </a>
                                    </a>
                                </div>
                                <!--标题-->
                                <h3 class="title">
                                    <a href="#"></a>
                                        ${produces.title}
                                </h3>
                                <p class="desc">
                                        ${produces.describe}
                                </p>
                                <p class="price">
                                    <span class="num">${produces.price}</span>元起
                                </p>
                                <!--<div class="flag flag-new">新品</div>-->
                            </li>
                        </c:forEach>

                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>--%>


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
        }
    })
</script>

</html>
