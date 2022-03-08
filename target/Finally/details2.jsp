<%--
  Created by IntelliJ IDEA.
  User: Simon
  Date: 2021/12/30
  Time: 20:15
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
<script src="${basePath}js/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">

    <title>饿了么详情界面</title>

    <script type="text/javascript">
        function buy(obj) {
            location.href="${basePath}buy/buygoods?produceNo="+obj
        }

        function back() {
            location.href="${basePath}index/produce?produceTypeNo=${produce.produceTypeNo}"
        }
    </script>

    <c:if test="${empty user}">
        <script>
            top.window.location.href='${basePath}login.jsp'
        </script>
    </c:if>

</head>
<body>

<div id="app">
    <el-row>
        <el-col :span="22">
            <el-page-header onclick="back()" content="${produce.title}">
            </el-page-header>
        </el-col>
        <el-col :span="2">
            <el-button type="danger" @click="open" onclick="buy('${produce.produceNo}')">立即购买</el-button>
        </el-col>
    </el-row>
    <br>
    <el-row>
        <el-col :span="4">
            <br>
        </el-col>
        <el-col :span="16">
            <%--<video controls="controls" autoplay="autoplay" width="100%">
                <source src="${basePath}video/first.mp4" type="video/mp4">
            </video>--%>
            <c:forEach items="${introduceImgPath}" var="introduceImgPath">
                <img src="${basePath}${introduceImgPath.imgPath}" width="100%">
            </c:forEach>
        </el-col>
        <el-col :span="4">
            <br>
        </el-col>
    </el-row>



</div>

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
