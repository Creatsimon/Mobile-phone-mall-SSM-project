<%--
  Created by IntelliJ IDEA.
  User: Simon
  Date: 2022/1/3
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
    request.setAttribute("basePath",basePath);
%>

<%
    //页面每隔30秒自动刷新一遍
    response.setHeader("refresh","5");
%>

<html>
<head>

    <link rel="stylesheet" href="${basePath}layui/css/layui.css">
    <script src="${basePath}layui/layui.js"></script>
    <script src="${basePath}js/jquery-3.5.1.min.js"></script>

    <title>Title</title>

    <script>
        $(()=>{
            let layer
            let element
            let iframe=$("#show")


            layui.use(['layer','element'],function () {
                layer = layui.layer
                element = layui.element


                let height = screen.availHeight*0.85
                iframe.attr('height',height+'px')

                element.on('nav(sys)',function (data) {
                    let url = data.attr('data-url')
                    if(data.attr('data-url')!=undefined){
                        getIframe(url)
                    }
                })
            })

            const getIframe = (url) => {
                iframe.attr("src",'${basePath}' + url)
            }

        })
    </script>

</head>
<body>

<div class="layui-row">
    <div class="layui-col-md2">
        <ul class="layui-nav layui-nav-tree layui-nav-side" lay-filter="sys" id="sys">
            <!-- 侧边导航: <ul class="layui-nav layui-nav-tree layui-nav-side"> -->
            <li class="layui-nav-item layui-nav-itemed">
                <a href="javascript:;">添加手机</a>
                <dl class="layui-nav-child">
                    <dd><a data-url="addProduce.jsp">添加基本信息</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">销售情况</a>
                <dl class="layui-nav-child">
                    <dd><a href="${basePath}visual.jsp">销售展示</a></dd>
                </dl>
            </li>
        </ul>
    </div>
    <div class="layui-col-md10 layui-col-md-offset2">
        <iframe id="show" src="" frameborder="0" width="100%"></iframe>
    </div>
</div>

</body>
</html>
