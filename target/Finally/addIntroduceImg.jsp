<%--
  Created by IntelliJ IDEA.
  User: Simon
  Date: 2022/1/3
  Time: 17:38
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



    <script type="text/javascript">
        function next() {
            location.href='${basePath}addProduce.jsp'
        }
    </script>
    <title>Title</title>

</head>
<body>

<form class="layui-form" action="${basePath}sys/addIntroduceImg" method="post" enctype="multipart/form-data">

    <h1>上传宣传图</h1>
    <p>上传多个请多次添加，要按顺序奥，用我的程序就要听我的话！</p>
    <input type="file" name="file"><br/>
    <button class="layui-btn" type="submit">添加</button>
</form>

</body>

<div>
    <button class="layui-btn" type="button" onclick="next()">完成</button>
</div>

</html>
