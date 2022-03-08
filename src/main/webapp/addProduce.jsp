<%--
  Created by IntelliJ IDEA.
  User: Simon
  Date: 2022/1/3
  Time: 14:31
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

    <%--<c:if test="${empty sysType}">
        <script type="text/javascript">
            location.href="${basePath}sys/findType"
        </script>
    </c:if>--%>


    <link rel="stylesheet" href="${basePath}layui/css/layui.css">
    <script src="${basePath}layui/layui.js"></script>
    <script src="${basePath}js/jquery-3.5.1.min.js"></script>

    <title>Title</title>

    <script type="text/javascript">
        function addProduce() {
            $.ajax({
                url:"${basePath}sys/addProduce",
                type:"post",
                data:$("#addProduce").serialize(),
                success:function (result) {
                    if (result==1){
                        layer.msg('注册成功，快去登录吧', {
                            icon: 1,
                            time: 2000 //2秒关闭（如果不配置，默认是3秒）
                        }, function(){
                        });
                    }else if(result==0){
                        layer.msg('服务器错误，请稍后再试！', {
                            icon: 2,
                            time: 2000 //2秒关闭（如果不配置，默认是3秒）
                        }, function(){
                        });
                    }
                }
            })
        }
    </script>

</head>
<body>

<%--<form class="layui-form" id="addProduce" method="post" enctype="multipart/form-data">

    <div class="layui-form-item">
        <label class="layui-form-label">输入手机所属类别编号</label>
        <div class="layui-input-block">
            <input type="text" name="produceTypeNo" required  lay-verify="required" placeholder="请输入手机名称" autocomplete="off" class="layui-input">
            <p>注:小米：2，华为：3，苹果：4，OPPO：5，VIVO：6，三星：7</p>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">输入手机名称</label>
        <div class="layui-input-block">
            <input type="text" name="title" required  lay-verify="required" placeholder="请输入手机名称" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">简述</label>
        <div class="layui-input-block">
            <input type="text" name="describe" required  lay-verify="required" placeholder="请输入手机特色点，最好不超过15个字" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">最低价格</label>
        <div class="layui-input-block">
            <input type="text" name="price" required  lay-verify="required" placeholder="请输入手机最低价格" autocomplete="off" class="layui-input">
        </div>
    </div>





    <div class="layui-form-item">
        <div class="layui-input-block">
            <button type="submit" class="layui-btn" onclick="addProduce()">立即提交</button>
        </div>
    </div>

</form>--%>

<form class="layui-form" action="${basePath}sys/addProduce" method="post" enctype="multipart/form-data">
    <%--商品所属类别编码：<input type="text" name="produceTypeNo"><br/>
    <p>注:小米：2，华为：3，苹果：4，OPPO：5，VIVO：6，三星：7</p>
    输入手机名称：<input type="text" name="title"><br/>
    简述：<input type="text" name="describe"><br/>
    最低价格：<input type="text" name="price"><br/>
    上传图片：<input type="file" name="file"><br/>--%>

        <div class="layui-form-item">
            <label class="layui-form-label">输入手机所属类别编号</label>
            <div class="layui-input-block">
                <input type="text" name="produceTypeNo" required  lay-verify="required" placeholder="请输入手机名称" autocomplete="off" class="layui-input">
                <p>注:小米：2，华为：3，苹果：4，OPPO：5，VIVO：6，三星：7</p>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">输入手机名称</label>
            <div class="layui-input-block">
                <input type="text" name="title" required  lay-verify="required" placeholder="请输入手机名称" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">简述</label>
            <div class="layui-input-block">
                <input type="text" name="describe" required  lay-verify="required" placeholder="请输入手机特色点，最好不超过15个字" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">最低价格</label>
            <div class="layui-input-block">
                <input type="text" name="price" required  lay-verify="required" placeholder="请输入手机最低价格" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">详细描述</label>
            <div class="layui-input-block">
                <input type="text" name="introduce" required  lay-verify="required" placeholder="请输入手机详细描述" autocomplete="off" class="layui-input">
            </div>
        </div>

        上传图片：<input type="file" name="file"><br/>


    <button class="layui-btn" type="submit">添加</button>

</form>

<script>

    $(      //页面加载完执行
        $("#addProduce").on("submit",function () {    //表单提交时监听提交事件
            return false;   //  必须返回false，才能跳到想要的页面
        })
    )

    //Demo
    layui.use('form', function(){
        var form = layui.form;

        //监听提交
        form.on('submit(formDemo)', function(data){
            return false;
        });
    });
</script>

</body>
</html>
