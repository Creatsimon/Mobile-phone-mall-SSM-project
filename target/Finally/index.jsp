<%--
  Created by IntelliJ IDEA.
  User: Simon
  Date: 2021/12/13
  Time: 15:32
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


    <title>首页</title>

    <c:if test="${empty types}">
        <script>
            location.href="${basePath}index/findType";
        </script>
    </c:if>

    <script>
        $(()=>{
            let layer
            let element
            let dropdown
            let iframe=$("#show")


            layui.use(['layer','element','dropdown'],function () {
                layer = layui.layer
                element = layui.element
                dropdown = layui.dropdown

                let height = screen.availHeight*0.85
                iframe.attr('height',height+'px')

                /*dropdown.on('click(sys)',function (data) {
                    let url = data.path
                    let produceTypeNo = data.id
                    if(data.path!=undefined){
                        getIframe(url,produceTypeNo)
                    }
                })*/

                element.on('nav(sys)',function (data) {
                    let url = data.attr('data-url')
                    if(data.attr('data-url')!=undefined){
                        getIframe(url)
                    }
                })
            })

            const getIframe = (url,produceTypeNo) => {
                /*iframe.attr("src",'${basePath}' + url+"?produceTypeNo="+produceTypeNo)*/
                iframe.attr("src",'${basePath}' + url)
            }

        })
    </script>


</head>
<body>

<div class="layui-fluid">
    <div class="layui-row">
        <div class="layui-col-md12">
            <ul class="layui-nav " lay-filter="sys" id="sys">
                <li class="layui-nav-item"><a href="${basePath}">首页</a></li>
                <c:forEach items="${types}" var="types">
                    <li class="layui-nav-item"><a data-url="${types.path}?produceTypeNo=${types.produceTypeNo}">${types.typeName}</a></li>
                </c:forEach>
                <li class="layui-nav-item" style="float: right;">
                    <c:choose>
                        <c:when test="${empty user}">
                            <a href="${basePath}login.jsp">登录</a>
                        </c:when>
                        <c:otherwise>
                            <a href="">${user.username}</a>
                            <dl class="layui-nav-child">
                                <dd><a href="${basePath}user/out">退出登录</a></dd>
                            </dl>
                        </c:otherwise>
                    </c:choose>

                </li>

                <li class="layui-nav-item" style="float: right;">
                    <a data-url="shopCart.jsp">购物车</a>
                </li>

                <li class="layui-nav-item" style="float: right;">
                    <a data-url="order.jsp">订单</a>
                </li>


            </ul>
        </div>
    </div>
    <div class="layui-row">
        <div class="layui-col-md12">
            <iframe id="show" src="${basePath}lunbo.jsp" frameborder="0" width="100%"></iframe>
        </div>
    </div>
    </div>
</div>


<script>
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function(){
        var element = layui.element;

        //…
    });
</script>

</body>
</html>
