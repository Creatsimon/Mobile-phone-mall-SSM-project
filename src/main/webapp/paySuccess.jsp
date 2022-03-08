<%--
  Created by IntelliJ IDEA.
  User: Simon
  Date: 2022/1/4
  Time: 11:30
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
    <!-- import CSS -->
    <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
    <title>Title</title>

    <script type="text/javascript">
        function success() {
            location.href='${basePath}'
        }
    </script>

</head>
<body>

<div id="app">
    <el-empty image="${basePath}img/logo/paySuccess.jpg" description="支付完成，去看看其他商品吧！">
        <el-button type="primary" onclick="success()">完成</el-button>
    </el-empty>
</div>

</body>

<!-- import Vue before Element -->
<script src="https://unpkg.com/vue/dist/vue.js"></script>
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
