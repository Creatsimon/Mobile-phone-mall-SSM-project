<%--
  Created by IntelliJ IDEA.
  User: Simon
  Date: 2021/12/29
  Time: 21:22
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
    <!-- 引入样式 -->
    <script src="${basePath}js/jquery-3.5.1.min.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
    <title>Title</title>

    <c:if test="${empty types}">
        <script>
            location.href="${basePath}index/findType";
        </script>
    </c:if>

    <script type="text/javascript">
        $(()=>{
            let iframe=$("#show")
            let height = screen.availHeight*0.90
            iframe.attr('height',height+'px')
        })
    </script>

</head>
<body>

<div id="app">

    <el-row>
        <el-col :span="24">
            <el-menu :default-active="activeIndex" text-color="#97C8F9" active-text-color="#409EFF" class="el-menu-demo" mode="horizontal" @select="handleSelect" >

                <el-menu-item index="0">首页</el-menu-item>
                <c:forEach items="${types}" var="types">
                    <el-menu-item index="${types.produceTypeNo}" indexPath="${types.path}">${types.typeName}</el-menu-item>
                </c:forEach>


                    <c:choose>
                        <c:when test="${empty user}">
                            <el-menu-item index="-2" style="float: right">登录</el-menu-item>
                        </c:when>
                        <c:otherwise>
                            <el-submenu index="-3" style="float: right">
                                <template slot="title">${user.username}</template>
                                <el-menu-item index="-4">退出登录</el-menu-item>
                            </el-submenu>
                        </c:otherwise>
                    </c:choose>

                <el-menu-item index="-1" style="float: right">订单</el-menu-item>

                <%--<el-button type="primary" style="float: right">搜素</el-button>--%>

                <%--<el-menu-item index="-5" style="float: right" disabled>
                    <el-form ref="form" :model="sizeForm" label-width="80px" size="mini">
                        <el-input v-model="sizeForm.name"></el-input>
                    </el-form>
                </el-menu-item>--%>

            </el-menu>
            <div class="line"></div>
            <el-menu
                    :default-active="activeIndex2"
                    class="el-menu-demo"
                    mode="horizontal"
                    @select="handleSelect"
                    background-color="#545c64"
                    text-color="#fff"
                    active-text-color="#ffd04b">
            </el-menu>
        </el-col>
    </el-row>

    <el-row>
        <el-col :span="24">
            <iframe id="show" src="${basePath}lunbo2.jsp" frameborder="0" width="100%"></iframe>
        </el-col>
    </el-row>

</div>


</body>
<script src="${basePath}vue/vue.js"></script>
<!-- import Vue before Element -->
<%--<script src="https://unpkg.com/vue/dist/vue.js"></script>--%>
<!-- import JavaScript -->
<script src="https://unpkg.com/element-ui/lib/index.js"></script>


<script>
    new Vue({
        el: '#app',
        data: function() {
            return { visible: false }
        },


        data() {
            return {
                activeIndex: '1',
                activeIndex2: '1'
            };
        },
        methods: {
            handleSelect(index,indexPath) {
                let iframe=$("#show")
                let height = screen.availHeight*0.75
                iframe.attr('height',height+'px')
                if (index==-2){
                    location.href="${basePath}login.jsp"
                }else if (index==-4){
                    location.href="${basePath}user/out"
                }else if(index==-1){
                    iframe.attr("src",'${basePath}order/findOrders')
                }else{
                    iframe.attr("src",'${basePath}index/produce?produceTypeNo='+index )
                }

            }
        }

    })
</script>

</html>
