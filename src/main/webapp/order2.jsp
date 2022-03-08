<%--
  Created by IntelliJ IDEA.
  User: Simon
  Date: 2022/1/2
  Time: 12:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
    request.setAttribute("basePath",basePath);
%>
<html>
<head>
    <!-- import CSS -->
    <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
    <script src="${basePath}js/jquery-3.5.1.min.js"></script>
    <title>Title</title>

    <script type="text/javascript">
        function login() {
            top.window.location.href='${basePath}login.jsp'
        }

        function check(obj) {
            location.href="${basePath}produce/de?produceNo="+obj
        }

        function buy(obj) {
            location.href="${basePath}buy/buygoods?produceNo="+obj
        }

    </script>

</head>
<body>

<div id="app">

    <c:choose>
        <c:when test="${empty user}">
            <el-empty>
                <el-button type="primary" onclick="login()">去登录</el-button>
            </el-empty>
        </c:when>
        <c:otherwise>
            <h1>我的订单</h1>
            <el-backtop target=".page-component__scroll .el-scrollbar__wrap"></el-backtop>
            <template>
                <el-tabs v-model="activeName" @tab-click="handleClick">
                    <el-tab-pane label="已支付" name="first">

                        <c:choose>
                            <c:when test="${empty orders2}">
                                <el-empty description="暂无已完成订单"></el-empty>
                            </c:when>
                            <c:otherwise>
                                <c:forEach items="${orders2}" var="orders">
                                    <el-card class="box-card">
                                        <div slot="header" class="clearfix">
                                            <span>已完成</span>
                                            <el-tooltip class="item" effect="dark" content="删除订单" placement="top">
                                                <el-button style="float: right" type="danger" icon="el-icon-delete" circle @click="open('${orders.orderId}')"></el-button>
                                            </el-tooltip>
                                        </div>
                                        <div>
                                            <el-row>
                                                <el-col :span="18">

                                                    <p>订单时间:<fmt:formatDate value="${orders.orderTime}" pattern="yyyy-MM-dd HH:mm:ss"/> | ${orders.username} | 订单号:${orders.orderId}</p>
                                                </el-col>
                                                <el-col :span="6">
                                                    <h2 style="float: right">实付金额:${orders.orderMoney}元</h2>
                                                </el-col>

                                            </el-row>

                                            <el-row>
                                                <el-col :span="8">
                                                    <img src="${basePath}${orders.imgPath}" style="width: 150px;height: 150px">
                                                </el-col>

                                                <el-col :span="8">
                                                    <h3>${orders.produceName}</h3>

                                                    <h3>${orders.color}</h3>

                                                    <h3>${orders.ram}</h3>
                                                </el-col>

                                                <el-col :span="8">
                                                    <br>
                                                    <el-button type="danger" style="float: right" onclick="check('${orders.produceNo}')">查看详情</el-button>
                                                    <br>
                                                    <br>
                                                    <br>
                                                    <el-button type="danger" style="float: right" onclick="buy('${orders.produceNo}')">再次购买</el-button>
                                                </el-col>
                                            </el-row>
                                        </div>
                                    </el-card>
                                    <br>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
                    </el-tab-pane>

                    <el-tab-pane label="待支付" name="second">
                        <c:choose>
                            <c:when test="${empty noPayOrders}">
                                <el-empty description="暂无待支付订单"></el-empty>
                            </c:when>
                            <c:otherwise>
                                <c:forEach items="${noPayOrders}" var="noPayOrders">
                                    <el-card class="box-card">
                                        <div slot="header" class="clearfix">
                                            <span>待支付</span>
                                            <el-tooltip class="item" effect="dark" content="支付订单" placement="top">
                                                <el-button style="float: right" type="primary" icon="el-icon-s-finance" circle @click="pay('${noPayOrders.orderId}')" ></el-button>
                                            </el-tooltip>
                                            <div style="float: right">&nbsp;</div>
                                            <el-tooltip class="item" effect="dark" content="取消订单" placement="top">
                                                <el-button style="float: right" type="info" icon="el-icon-circle-close" circle @click="closeOrder('${noPayOrders.orderId}')"></el-button>
                                            </el-tooltip>
                                        </div>
                                        <div>
                                            <el-row>
                                                <el-col :span="18">
                                                    <p>创建订单时间:<fmt:formatDate value="${noPayOrders.orderTime}" pattern="yyyy-MM-dd HH:mm:ss"/> | 用户名:${noPayOrders.username} | 订单号:${noPayOrders.orderId}</p>
                                                </el-col>
                                                <el-col :span="6">
                                                    <h2 style="float: right">应付金额:${noPayOrders.orderMoney}元</h2>
                                                </el-col>

                                            </el-row>

                                            <el-row>
                                                <el-col :span="12">
                                                    <img src="${basePath}${noPayOrders.imgPath}" style="width: 150px;height: 150px">
                                                </el-col>

                                                <el-col :span="12">
                                                    <h3>${noPayOrders.produceName}</h3>

                                                    <h3>${noPayOrders.color}</h3>

                                                    <h3>${noPayOrders.ram}</h3>
                                                </el-col>
                                            </el-row>
                                        </div>
                                    </el-card>
                                    <br>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
                    </el-tab-pane>

                </el-tabs>
            </template>
        </c:otherwise>
    </c:choose>


</div>

<style>
    .text {
        font-size: 14px;
    }

    .item {
        margin-bottom: 18px;
    }

    .clearfix:before,
    .clearfix:after {
        display: table;
        content: "";
    }
    .clearfix:after {
        clear: both
    }

    .box-card {
        width: 99%;
    }
</style>

</body>

<!-- import Vue before Element -->
<%--<script src="https://unpkg.com/vue/dist/vue.js"></script>--%>
<script src="${basePath}vue/vue.js"></script>
<!-- import JavaScript -->
<script src="https://unpkg.com/element-ui/lib/index.js"></script>
<script>
    new Vue({
        el: '#app',
        data: function() {
            return {
                visible: false ,
                activeName: 'first',
            }
        },
        methods: {
            handleClick(tab, event) {
                console.log(tab, event);
            },

            pay(obj){
                location.href="${basePath}order/payOrder?orderId="+obj
            },

            open(obj) {
                this.$confirm('此操作将永久删除该订单, 是否继续?', '提示', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    type: 'warning'
                }).then(() => {

                    $.ajax({
                        url:"${basePath}order/deleteOrder?orderId="+obj,
                        type:"post",
                        data:"",
                        success:function (){
                        }
                    })

                    this.$message({
                        type: 'success',
                        message: '删除成功!请刷新页面看看！'
                    });

                }).catch(() => {
                    this.$message({
                        type: 'info',
                        message: '已取消删除'
                    });
                });
            },
            closeOrder(obj){
                this.$confirm('此操作将永久取消该订单, 是否继续?', '提示', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    type: 'warning'
                }).then(() => {

                    $.ajax({
                        url:"${basePath}order/deleteOrder?orderId="+obj,
                        type:"post",
                        data:"",
                        success:function (){
                        }
                    })

                    this.$message({
                        type: 'success',
                        message: '取消订单成功!'
                    });


                }).catch(() => {
                    this.$message({
                        type: 'info',
                        message: '已取消删除'
                    });
                });
            }

        }
    })
</script>

</html>
