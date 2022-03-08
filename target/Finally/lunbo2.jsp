<%--
  Created by IntelliJ IDEA.
  User: Simon
  Date: 2021/12/30
  Time: 22:43
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
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <!-- import CSS -->
    <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
    <script src="${basePath}js/jquery-3.5.1.min.js"></script>
    <title>Title</title>

    <c:if test="${empty recommends}">
        <script>
            var _this = this
            $.ajax({
                url:"${basePath}produce/findRecommend",
                type:"get",
                data:"",
                success:function (result) {
                    _this.imgList=result.data()
                }
            })
        </script>
    </c:if>

    <%--<script type="text/javascript">
        function search() {
            let t = $("#check").value()
            alert(t)
        }
    </script>--%>

</head>
<body>

<div id="app">

    <el-row>
        <el-col :span="13">
            <br>
        </el-col>
        <el-col :span="10">
            <el-input v-model="input" placeholder="请输入内容" style="float: right" id="check"></el-input>
        </el-col>
        <el-col :span="1">
            <el-button type="primary" icon="el-icon-search" circle style="float: right" @click="search"></el-button>
        </el-col>
    </el-row>

    <el-carousel :interval="4000" type="card" height="300px" >
        <el-carousel-item v-for="item in imgList" :key="item.id">
            <img :src="item.idView" class="image" width="100%" height="100%">
        </el-carousel-item>
    </el-carousel>
</div>

<style>
    .el-carousel__item h3 {
        color: #475669;
        font-size: 14px;
        opacity: 0.75;
        line-height: 200px;
        margin: 0;
    }

    .el-carousel__item:nth-child(2n) {
        background-color: #99a9bf;
    }

    .el-carousel__item:nth-child(2n+1) {
        background-color: #d3dce6;
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
        data: function () {
            return {
                visible: false,
                input: '',
                imgList: [
                    {id:0,idView:'${basePath}img/recommend/1.jpg'},
                    {id:1,idView:'${basePath}img/recommend/2.jpg'},
                    {id:2,idView:'${basePath}img/recommend/3.jpg'},
                    {id:3,idView:'${basePath}img/recommend/4.jpg'}
                ]
            }
        },
        method:function (){
            var _this = this
            $.ajax({
                url:"${basePath}produce/findRecommend",
                type:"get",
                data:"",
                success:function (result) {
                    this.imgList=result
                }
            })
        },
        methods:{
            search(){
                var t = this.input
                location.href = "${basePath}produce/search?produceName="+t
            }
        }
    })



</script>

</html>
