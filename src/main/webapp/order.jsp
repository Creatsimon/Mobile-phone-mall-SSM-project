<%--
  Created by IntelliJ IDEA.
  User: Simon
  Date: 2021/12/30
  Time: 10:43
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

    <%--<c:if test="${empty user}">
        <script type="text/javascript">
            layer.msg('还没有登录，请先登陆吧！', {
                icon: 2,
                time: 2000 //2秒关闭（如果不配置，默认是3秒）
            }, function(){
                top.window.location.href="${basePath}login.jsp"
            });
        </script>
    </c:if>--%>

    <title>订单</title>
</head>
<body>

<h2>我的订单</h2>

<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del" >删除</a>
</script>

<table id="demo" lay-filter="test" lay-skin="nob"></table>

<script src="${basePath}layui/layui.js"></script>
<script>

    layui.use('table', function(){
        var table = layui.table;


        table.on('tool(test)', function(obj){ //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
            var data = obj.data; //获得当前行数据
            var orderId = data.orderId
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            var tr = obj.tr; //获得当前行 tr 的 DOM 对象（如果有的话）

            if(layEvent === 'del'){ //查看
                layer.confirm('确定要删除此订单吗', function(index){
                    //alert(orderId)
                    obj.del(); //删除对应行（tr）的DOM结构，并更新缓存
                    layer.close(index);
                    //向服务端发送删除指令
                    location.href="${basePath}order/delete?orderId="+orderId
                });
            }
        });

        //第一个实例
        table.render({
            elem: '#demo'
            ,height: 460
            ,url: '${basePath}order/findOrders' //数据接口
            ,method:'post'
            ,page: true //开启分页
            ,curr:1
            ,limit:10
            //分页失效后用的代码
            ,parseData: function (res) { //将原始数据解析成 table 组件所规定的数据，res为从url中get到的数据
                var result;
                console.log(this);
                console.log(JSON.stringify(res));
                if (this.page.curr) {
                    result = res.data.slice(this.limit * (this.page.curr - 1), this.limit * this.page.curr);
                }
                else {
                    result = res.data.slice(0, this.limit);
                }
                return {
                    "code": res.code, //解析接口状态
                    "msg": res.msg, //解析提示文本
                    "count": res.count, //解析数据长度
                    "data": result //解析数据列表
                };
            }
            ,cols: [[ //表头
                {field: 'orderId', title: '订单编号'}
                ,{field: 'orderTime', title: '订单时间'}
                ,{field: 'color', title: '订单金额'}
                ,{field: 'right', title: '操作', toolbar: '#barDemo'}
            ]],

        });

    });
</script>

<script>
    //注意：选项卡 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function(){
        var element = layui.element;

        //…
    });
</script>

<script>

    layui.use('table', function(){
        var table = layui.table;


        table.on('tool(test)', function(obj){ //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
            var data = obj.data; //获得当前行数据
            var orderId = data.orderId
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            var tr = obj.tr; //获得当前行 tr 的 DOM 对象（如果有的话）

            if(layEvent === 'del'){ //查看
                layer.confirm('确定要删除此订单吗', function(index){
                    //alert(orderId)
                    obj.del(); //删除对应行（tr）的DOM结构，并更新缓存
                    layer.close(index);
                    //向服务端发送删除指令
                    location.href="${basePath}order/delete?orderId="+orderId
                });
            }
        });

        //第一个实例
        table.render({
            elem: '#demo'
            ,height: 500
            ,url: '${basePath}order/findOrders' //数据接口
            ,method:'post'
            ,page: true //开启分页
            ,curr:1
            ,limit:10
            //分页失效后用的代码
            ,parseData: function (res) { //将原始数据解析成 table 组件所规定的数据，res为从url中get到的数据
                var result;
                console.log(this);
                console.log(JSON.stringify(res));
                if (this.page.curr) {
                    result = res.data.slice(this.limit * (this.page.curr - 1), this.limit * this.page.curr);
                }
                else {
                    result = res.data.slice(0, this.limit);
                }
                return {
                    "code": res.code, //解析接口状态
                    "msg": res.msg, //解析提示文本
                    "count": res.count, //解析数据长度
                    "data": result //解析数据列表
                };
            }
            ,cols: [[ //表头
                {field: 'orderId', title: '订单编号'}
                ,{field: 'produceName', title: '订单内容'}
                ,{field: 'orderTime', title: '订单时间'}
                ,{field: 'orderMoney', title: '订单金额'}
                ,{field: 'right', title: '操作', toolbar: '#barDemo'}
            ]],

        });

    });
</script>

</body>
</html>
