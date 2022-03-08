<%--
  Created by IntelliJ IDEA.
  User: Simon
  Date: 2022/1/3
  Time: 17:40
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


    <title>Title</title>

</head>
<body>

<form class="layui-form" action="${basePath}sys/addRam" method="post" >

    <h1>多个版本请重复添加，添加完成点击下一步</h1>

    <div class="layui-form-item">
        <label class="layui-form-label">输入手机版本</label>
        <div class="layui-input-block">
            <input type="text" name="ram" required  lay-verify="required" placeholder="请输入手机版本" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">输入手机价格</label>
        <div class="layui-input-block">
            <input type="text" name="produceNo" required  lay-verify="required" placeholder="请输入该版本手机的价格" autocomplete="off" class="layui-input">

        </div>
    </div>



    <button class="layui-btn" type="submit">添加</button>

</form>


</body>
</html>
