<%--
  Created by IntelliJ IDEA.
  User: Simon
  Date: 2022/1/3
  Time: 17:28
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

    <link rel="stylesheet" href="${basePath}layui/css/layui.css">
    <script src="${basePath}layui/layui.js"></script>
    <script src="${basePath}js/jquery-3.5.1.min.js"></script>

    <title></title>
</head>
<body>

<form class="layui-form" action="${basePath}sys/addColor" method="post" >


    <div class="layui-form-item">
        <label class="layui-form-label">输入手机颜色</label>
        <div class="layui-input-block">
            <input type="text" name="color" required  lay-verify="required" placeholder="请输入手机颜色" autocomplete="off" class="layui-input">
            <p>多个颜色请用英文逗号隔开</p>
        </div>
    </div>



    <button class="layui-btn" type="submit">添加</button>

</form>

</body>
</html>
