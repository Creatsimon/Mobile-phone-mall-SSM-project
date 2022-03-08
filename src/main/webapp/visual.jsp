<%--
  Created by IntelliJ IDEA.
  User: Simon
  Date: 2022/1/4
  Time: 19:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
    request.setAttribute("basePath",basePath);
%>

<%--<%
    //页面每隔30秒自动刷新一遍
    response.setHeader("refresh","10");
%>--%>
<html>
<head>
    <meta charset="utf-8">
    <title>手机销售数据</title>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts@5.2.2/dist/echarts.min.js"></script>
    <script type="text/javascript" src="${basePath}js/js/jquery.js"></script>
    <link rel="stylesheet" href="${basePath}css/css/comon0.css">

    <script type="text/javascript">
        function loadBarChart(option) {
            $.ajax({
                url:"${basePath}order/findJson",
                type:"post",
                data:"",
                dataType:"json",
                async:false,
                success:function(result){
                    option.xAxis.data=[];
                    option.series[0].data=[];
                    for(var i = 0;i < result.length;i++){
                        option.xAxis.data.push(result[i].typeName);
                        option.series[0].data.push(result[i].productNum);
                    }
                }
            });
        }
    </script>

    <%--<c:if test="${empty money}">
        <script>
            $.ajax({
                url:"${basePath}order/loadCharts",
                type:"post",
                date:"",
                success:function (){
                    $("#money").html(${money})

                }
            })
        </script>
    </c:if>--%>

    <script type="text/javascript">
        $(()=>{
            $.ajax({
                url:"${basePath}order/loadCharts",
                type:"post",
                date:"",
                success:function (){
                    //$("#money").html('${money}')
                    /*let mac = $("#moneyAndcount")
                    mac.append('<li class="pulll_left counter" id="money">${money}</li>')*/
                }
            })



        })

        function loadOrders() {
            $.ajax({
                url:"${basePath}order/loadCharts",
                type:"post",
                date:"",
                success:function (){

                }
            })

            setInterval("loadOrders",5);

        }

    </script>

</head>
<script type="text/javascript">
    $(document).ready(function(){
        var html=$(".wrap ul").html()
        $(".wrap ul").append(html)
        var ls=$(".wrap li").length/2+1
        i=0
        ref = setInterval(function(){
            i++
            if(i==ls){
                i=1
                $(".wrap ul").css({marginTop:0})
                $(".wrap ul").animate({marginTop:-'.52'*i+'rem'},1000)
            }
            $(".wrap ul").animate({marginTop:-'.52'*i+'rem'},1000)


        },2400);



        var html2=$(".adduser ul").html()
        $(".adduser ul").append(html2)
        var ls2=$(".adduser li").length/2+1
        a=0
        ref = setInterval(function(){
            a++
            if(a==ls2){
                a=1
                $(".adduser ul").css({marginTop:0})
                $(".adduser ul").animate({marginTop:-'.5'*a+'rem'},800)
            }
            $(".adduser ul").animate({marginTop:-'.5'*a+'rem'},800)


        },4300);








    })
</script>
<body>
<div class="loading">
    <div class="loadbox"> <img src="${basePath}img/images/loading.gif"> 页面加载中... </div>
</div>
<div class="head">
    <h1><img src="${basePath}img/images/logo.png">手机销售数据</h1>
    <div class="weather"><img src="${basePath}img/images/weather.png"><span>${teDay}</span></div>
</div>
<div class="mainbox">
    <ul class="clearfix">
        <li>
            <div class="boxall" style="height: 2.7rem">
                <div class="alltitle">销售数据</div>

                <div class="sycm">
                    <ul class="clearfix">
                        <li><h2 id="todayMoney">${todayMoney}</h2><span>今日销售额</span></li>
                        <li><h2 id="yesterdayMoney">${yesterdayMoney}</h2><span>昨日销售额</span></li>
                        <li><h2 id="p">${p}%</h2><span>环比增长</span></li>
                    </ul>
                    <div style="border-bottom: 1px solid rgba(255,255,255,.1)"></div>
                    <ul class="clearfix">
                        <li><h2 id="todayNum">${todayNum}</h2><span>今日销售数量</span></li>
                        <li><h2 id="yesterdayNum">${yesterdayNum}</h2><span>昨日销售数量</span></li>
                        <li><h2 id="numP">${numP}%</h2><span>环比增长</span></li>
                    </ul>

                </div>
                <div  class="boxfoot"></div>

            </div>


                <div class="alltitle">行业区分比例</div>
            <%--<div id="main" style="width: 600px;height:400px;"></div>
            <script type="text/javascript">
                // 基于准备好的dom，初始化echarts实例
                var myChart = echarts.init(document.getElementById('main'));

                // 指定图表的配置项和数据
                var option = {
                    title: {
                        text: '各类型商品销量柱状图'
                    },
                    tooltip: {},
                    legend: {
                        data: ['销量']
                    },
                    xAxis: {
                        data: ["", "", "", ""]
                    },
                    yAxis: {},
                    series: [{
                        name: '销量',
                        type: 'bar',
                        data: [0, 0, 0, 0, 0,]
                    }]
                };
                // 使用刚指定的配置项和数据显示图表。
                loadBarChart(option);
                myChart.setOption(option);
            </script>--%>
                <div class="boxfoot"></div>


            <%--<div  >
                <div id="container" style="height: 50%"></div>
            </div>--%>

        </li>
        <li>
            <div class="bar">
                <div class="barbox">
                    <ul class="clearfix" id="moneyAndcount">
                        <li class="pulll_left counter" id="money">${money}</li>
                        <li class="pulll_left counter" id="count">${count}</li>
                    </ul>
                </div>
                <div class="barbox2">
                    <ul class="clearfix">
                        <li class="pulll_left">消费总金额</li>
                        <li class="pulll_left">消费总笔数</li>
                    </ul>
                </div>
            </div>
            <div class="map">
               <%-- <div class="alltitle">各品牌销量</div>--%>
                <div class="map1"><img src="${basePath}img/images/lbx.png"></div>
                <div class="map2"><img src="${basePath}img/images/jt.png"></div>
                <div class="map3"><img src="${basePath}img/images/map.png"></div>
                <%--<div id="container" style="height:100%"></div>--%>
                    <%--<div id="container" style="height:50%;width: 90%"></div>--%>
                <div class="map4" id="map_1"></div>
            </div>
        </li>
        <li>
            <div class="boxall" style="height: 3.4rem">
                <div class="alltitle">实时消费记录</div>
                <div class="wrap">
                    <ul id="userPay">

                        <c:forEach items="${teDayOrders}" var="teDayOrders">
                            <li>
                                <p>${teDayOrders.username} 购买 ${teDayOrders.produceName} 支付 ${teDayOrders.orderMoney}</p>
                            </li>
                        </c:forEach>

                    </ul>
                </div>
                <div class="boxfoot"></div>
            </div>
            <div>
                <%--<div id="container" style="height:50%;width: 90%;"></div>--%>
            </div>
        </li>
    </ul>

</div>
<div class="back"></div>
<script language="JavaScript" src="${basePath}js/js/js.js"></script>
<script type="text/javascript" src="${basePath}js/js/echarts.min.js"></script>
<script type="text/javascript" src="${basePath}js/js/china.js"></script>
<script type="text/javascript" src="${basePath}js/js/area_echarts.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        myChart1.resize();
        myChart2.resize();
        myChart3.resize();
        myChart6.resize();
        myChart7.resize();
        myChart8.resize();
    })
    window.addEventListener("resize", function () {
        myChart1.resize();
        myChart2.resize();
        myChart3.resize();
        myChart6.resize();
        myChart7.resize();
        myChart8.resize();
    });
</script>
<script type="text/javascript">
    var v0 = 1000;
    var v1 = 353;
    var v2 = 178;
    var v3 = 68;



    var myChart6 = echarts.init(document.getElementById('echarts6'));
    option6 = {
        series: [{
            type: 'pie',
            radius: ['70%', '80%'],
            color: '#0088cc',
            label: {
                normal: {
                    position: 'center'
                }
            },
            data: [{
                value: v1,
                name: '新增会员',
                label: {
                    normal: {
                        formatter: v1 + '',
                        textStyle: {
                            fontSize: 20,
                            color: '#fff',
                        }
                    }
                }
            },
                {
                    value: v0,
                    name: '老会员',
                    label: {
                        normal: {
                            formatter: function (params) {
                                return '占比' + Math.round(v1 / v0 * 100) + '%'
                            },
                            textStyle: {
                                color: '#aaa',
                                fontSize: 12
                            }
                        }
                    },
                    itemStyle: {
                        normal: {
                            color: 'rgba(255,255,255,.2)'
                        },
                        emphasis: {
                            color: '#fff'
                        }
                    },
                }]
        }]

    };

    var myChart7 = echarts.init(document.getElementById('echarts7'));
    option7 = {
        series: [{
            type: 'pie',
            radius: ['70%', '80%'],
            color: '#fccb00',
            label: {
                normal: {
                    position: 'center'
                }
            },
            data: [{
                value: v2,
                name: '新增领卡会员',
                label: {
                    normal: {
                        formatter: v2 + '',
                        textStyle: {
                            fontSize: 20,
                            color: '#fff',
                        }
                    }
                }
            },
                {
                    value: v0,
                    name: '总领卡会员',
                    label: {
                        normal: {
                            formatter: function (params) {
                                return '占比' + Math.round(v2 / v0 * 100) + '%'
                            },
                            textStyle: {
                                color: '#aaa',
                                fontSize: 12
                            }
                        }
                    },
                    itemStyle: {
                        normal: {
                            color: 'rgba(255,255,255,.2)'
                        },
                        emphasis: {
                            color: '#fff'
                        }
                    },
                }]
        }]
    };


    var myChart8 = echarts.init(document.getElementById('echarts8'));
    option8 = {


        series: [{

            type: 'pie',
            radius: ['70%', '80%'],
            color: '#62b62f',
            label: {
                normal: {
                    position: 'center'
                }
            },
            data: [{
                value: v3,
                name: '女消费',
                label: {
                    normal: {
                        formatter: v3 + '',
                        textStyle: {
                            fontSize: 20,
                            color: '#fff',
                        }
                    }
                }
            }, {
                value: v0,
                name: '男消费',
                label: {
                    normal: {
                        formatter: function (params) {
                            return '占比' + Math.round(v2 / v0 * 100) + '%'
                        },
                        textStyle: {
                            color: '#aaa',
                            fontSize: 12
                        }
                    }
                },
                itemStyle: {
                    normal: {
                        color: 'rgba(255,255,255,.2)'
                    },
                    emphasis: {
                        color: '#fff'
                    }
                },
            }]
        }]
    };
    setTimeout(function () {
        myChart6.setOption(option6);
        myChart7.setOption(option7);
        myChart8.setOption(option8);
    }, 500);

</script>
<script type="text/javascript">
    var myChart1 = echarts.init(document.getElementById('echarts1'));
    var v1 = 298;
    var v2 = 523;
    var v3 = v1 + v2;
    option1 = {


        series: [{
            type: 'pie',
            radius: ['70%', '80%'],
            color: '#0088cc',
            label: {
                normal: {
                    position: 'center'
                }
            },
            data: [{
                value: v1,
                name: '平均单客价',
                label: {
                    normal: {
                        formatter: v3 + '',
                        textStyle: {
                            fontSize: 20,
                            color: '#fff',
                        }
                    }
                }
            },
            ]
        }]
    };


    var myChart3 = echarts.init(document.getElementById('echarts3'));
    var v1 = 298
    var v2 = 523
    var v3 = v1 + v2
    option2 = {


        series: [{
            type: 'pie',
            radius: ['70%', '80%'],
            color: '#fccb00',
            label: {
                normal: {
                    position: 'center'
                }
            },
            data: [{
                value: v1,
                name: '男消费',
                label: {
                    normal: {
                        formatter: v1 + '',
                        textStyle: {
                            fontSize: 20,
                            color: '#fff',
                        }
                    }
                }
            }, {
                value: v2,
                name: '女消费',
                label: {
                    normal: {
                        formatter: function (params) {
                            return '占比' + Math.round(v1 / v3 * 100) + '%'
                        },
                        textStyle: {
                            color: '#aaa',
                            fontSize: 12
                        }
                    }
                },
                itemStyle: {
                    normal: {
                        color: 'rgba(255,255,255,.2)'
                    },
                    emphasis: {
                        color: '#fff'
                    }
                },
            }]
        }]
    };


    var myChart2 = echarts.init(document.getElementById('echarts2'));
    option3 = {


        series: [{

            type: 'pie',
            radius: ['70%', '80%'],
            color: '#62b62f',
            label: {
                normal: {
                    position: 'center'
                }
            },
            data: [{
                value: v2,
                name: '女消费',
                label: {
                    normal: {
                        formatter: v2 + '',
                        textStyle: {
                            fontSize: 20,
                            color: '#fff',
                        }
                    }
                }
            }, {
                value: v1,
                name: '男消费',
                label: {
                    normal: {
                        formatter: function (params) {
                            return '占比' + Math.round(v2 / v3 * 100) + '%'
                        },
                        textStyle: {
                            color: '#aaa',
                            fontSize: 12
                        }
                    }
                },
                itemStyle: {
                    normal: {
                        color: 'rgba(255,255,255,.2)'
                    },
                    emphasis: {
                        color: '#fff'
                    }
                },
            }]
        }]
    };
    setTimeout(function () {
        myChart1.setOption(option1);
        myChart2.setOption(option2);
        myChart3.setOption(option3);
    }, 500);

</script>
<script type="text/javascript">
    var myChart = echarts.init(document.getElementById('echarts4'));
    var plantCap = [{
        name: '工业',
        value: '222'
    }, {
        name: '农业',
        value: '115'
    }, {
        name: '互联网',
        value: '113'
    }, {
        name: '医疗',
        value: '95'
    }, {
        name: '文学',
        value: '92'
    }, {
        name: '服装',
        value: '87'
    }];
    var datalist = [{
        offset: [56, 48],
        symbolSize: 110,

        color: 'rgba(73,188,247,.14)',

    }, {

        offset: [30, 70],
        symbolSize: 70,
        color: 'rgba(73,188,247,.14)'
    }, {
        offset: [0, 43],
        symbolSize: 60,
        color: 'rgba(73,188,247,.14)'

    }, {
        offset: [93, 30],
        symbolSize: 70,
        color: 'rgba(73,188,247,.14)'
    }, {
        offset: [26, 19],
        symbolSize: 65,
        color: 'rgba(73,188,247,.14)'
    }, {
        offset: [75, 75],
        symbolSize: 60,
        color: 'rgba(73,188,247,.14)'

    }];

    var datas = [];
    for (var i = 0; i < plantCap.length; i++) {
        var item = plantCap[i];
        var itemToStyle = datalist[i];
        datas.push({
            name: item.value + '\n' + item.name,
            value: itemToStyle.offset,
            symbolSize: itemToStyle.symbolSize,
            label: {
                normal: {
                    textStyle: {
                        fontSize: 14
                    }
                }
            },

            itemStyle: {
                normal: {
                    color: itemToStyle.color,
                    opacity: itemToStyle.opacity
                }
            },
        })
    }
    option = {
        grid: {
            show: false,
            top: 10,
            bottom: 10
        },

        xAxis: [{
            gridIndex: 0,
            type: 'value',
            show: false,
            min: 0,
            max: 100,
            nameLocation: 'middle',
            nameGap: 5
        }],

        yAxis: [{
            gridIndex: 0,
            min: 0,
            show: false,
            max: 100,
            nameLocation: 'middle',
            nameGap: 30
        }],
        series: [{
            type: 'scatter',
            symbol: 'circle',
            symbolSize: 120,
            label: {
                normal: {
                    show: true,
                    formatter: '{b}',
                    color: '#FFF',
                    textStyle: {
                        fontSize: '30'
                    }
                },
            },
            itemStyle: {
                normal: {
                    color: '#F30'
                }
            },
            data: datas
        }]

    };
    myChart.setOption(option);
    $(document).ready(function () {
        myChart.resize();

    })
    window.addEventListener("resize", function () {
        myChart.resize();
    });
</script>

<script type="text/javascript">
    var dom = document.getElementById("container");
    var myChart = echarts.init(dom);
    var app = {};

    var option;



    option = {
        color: ['#80FFA5', '#00DDFF', '#37A2FF', '#FF0087', '#FFBF00'],
        title: {
            text: ''
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'cross',
                label: {
                    backgroundColor: '#6a7985'
                }
            }
        },
        legend: {
            data: ['Line 1', 'Line 2', 'Line 3', 'Line 4', 'Line 5']
        },
        toolbox: {
            feature: {
                saveAsImage: {}
            }
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis: [
            {
                type: 'category',
                boundaryGap: false,
                data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
            }
        ],
        yAxis: [
            {
                type: 'value'
            }
        ],
        series: [
            {
                name: '',
                type: 'line',
                stack: 'Total',
                smooth: true,
                lineStyle: {
                    width: 0
                },
                showSymbol: false,
                areaStyle: {
                    opacity: 0.8,
                    color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [
                        {
                            offset: 0,
                            color: 'rgb(128, 255, 165)'
                        },
                        {
                            offset: 1,
                            color: 'rgb(1, 191, 236)'
                        }
                    ])
                },
                emphasis: {
                    focus: 'series'
                },
                /*data: [140, 232, 101, 264, 90, 340, 250]*/
                data: [],/*(function (){
                    var data=[]
                    $.ajax({
                        url:"${basePath}order/finJson",
                        type:"get",
                        //dataType:"json",
                        success:function (result){
                            for (var i = 0;i<result.length;i++){
                                data.push(result[i])
                            }
                        }
                    })
                })*/

            },
            {
                name: 'Line 2',
                type: 'line',
                stack: 'Total',
                smooth: true,
                lineStyle: {
                    width: 0
                },
                showSymbol: false,
                areaStyle: {
                    opacity: 0.8,
                    color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [
                        {
                            offset: 0,
                            color: 'rgb(0, 221, 255)'
                        },
                        {
                            offset: 1,
                            color: 'rgb(77, 119, 255)'
                        }
                    ])
                },
                emphasis: {
                    focus: 'series'
                },
                data: [120, 282, 111, 234, 220, 340, 310]
            },
            {
                name: 'Line 3',
                type: 'line',
                stack: 'Total',
                smooth: true,
                lineStyle: {
                    width: 0
                },
                showSymbol: false,
                areaStyle: {
                    opacity: 0.8,
                    color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [
                        {
                            offset: 0,
                            color: 'rgb(55, 162, 255)'
                        },
                        {
                            offset: 1,
                            color: 'rgb(116, 21, 219)'
                        }
                    ])
                },
                emphasis: {
                    focus: 'series'
                },
                data: [320, 132, 201, 334, 190, 130, 220]
            },
            {
                name: 'Line 4',
                type: 'line',
                stack: 'Total',
                smooth: true,
                lineStyle: {
                    width: 0
                },
                showSymbol: false,
                areaStyle: {
                    opacity: 0.8,
                    color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [
                        {
                            offset: 0,
                            color: 'rgb(255, 0, 135)'
                        },
                        {
                            offset: 1,
                            color: 'rgb(135, 0, 157)'
                        }
                    ])
                },
                emphasis: {
                    focus: 'series'
                },
                data: [220, 402, 231, 134, 190, 230, 120]
            },
            {
                name: 'Line 5',
                type: 'line',
                stack: 'Total',
                smooth: true,
                lineStyle: {
                    width: 0
                },
                showSymbol: false,
                label: {
                    show: true,
                    position: 'top'
                },
                areaStyle: {
                    opacity: 0.8,
                    color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [
                        {
                            offset: 0,
                            color: 'rgb(255, 191, 0)'
                        },
                        {
                            offset: 1,
                            color: 'rgb(224, 62, 76)'
                        }
                    ])
                },
                emphasis: {
                    focus: 'series'
                },
                data: [220, 302, 181, 234, 210, 290, 150]
            }
        ]
    };

    if (option && typeof option === 'object') {
        myChart.setOption(option);
    }

</script>

<script type="text/javascript" src="${basePath}js/js/jquery.waypoints.min.js"></script>
<script type="text/javascript" src="${basePath}js/js/jquery.countup.min.js"></script>
<script type="text/javascript">
    $('.counter').countUp();
</script>

</body>
</html>
