package com.fx.controller;

import com.alibaba.fastjson.JSON;
import com.fx.entity.Chart;
import com.fx.entity.Orders;
import com.fx.entity.PageOrder;
import com.fx.entity.User;
import com.fx.service.OrderService;
import com.fx.service.ProduceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("order")
public class OrderController {

    @Autowired
    private OrderService orderService;

    @Autowired
    private ProduceService produceService;



    @RequestMapping("/findOrders")

    public String findAllOrders(HttpServletRequest request, HttpServletResponse response) throws IOException {

        User user = (User) request.getSession().getAttribute("user");

        if (user != null) {
            List<Orders> orders = orderService.findAllOrdersByUsername(user.getUsername());

            List<Orders> noPayOrders = orderService.findNoPayOrders(user.getUsername());

            response.setContentType("text/html;charset=utf-8");

            request.getSession().setAttribute("orders2", orders);

            request.getSession().setAttribute("noPayOrders", noPayOrders);

        }

        return "order2";
    }

    @RequestMapping("/insertOrder")
    public String insertOrder(HttpServletRequest request){


        Orders inserOrder = (Orders) request.getSession().getAttribute("orders");
        inserOrder.setIsPay(1);

        orderService.buyPhone(inserOrder);
        orderService.addTureOrder(inserOrder);

        return "paySuccess";

    }

    @RequestMapping("/deleteOrder")
    @ResponseBody
    private void deleteOrder(String orderId,HttpServletRequest request){

        System.out.println("删除了");
        orderService.deleteOrder(orderId);

        User user = (User) request.getSession().getAttribute("user");

        List<Orders> orders = orderService.findAllOrdersByUsername(user.getUsername());

        request.getSession().setAttribute("orders2", orders);

        //return "order2";

    }

    @RequestMapping("/payOrder")
    public String payOrder(String orderId,HttpServletRequest request){
        System.out.println(orderId);
        Orders orders = orderService.findOrderByOrderId(orderId);
        System.out.println(orders);

        request.getSession().setAttribute("isPayOrderId",orderId);

        String oId = orders.getOrderId();
        request.getSession().setAttribute("payOrderId",oId);

        String title = orders.getProduceName()+" "+orders.getColor()+" "+orders.getRam();
        request.getSession().setAttribute("payOrderTitle",title);

        String money =orders.getOrderMoney().toString();
        request.getSession().setAttribute("payOrderMoney",money);

        return "payByOrder";

    }

    @RequestMapping("/updateOrderIsPay")
    public String updateOrderIsPay(HttpServletRequest request){
        String orderId = (String) request.getSession().getAttribute("isPayOrderId");

        System.out.println(orderId);

        orderService.updateOrderIsPay(orderId);

        Orders orders = orderService.findOrderByOrderId(orderId);
        orderService.addTureOrder(orders);

        return "paySuccess";
    }

    @RequestMapping("/loadCharts")

    public void loadCharts(HttpServletRequest request){

        //DecimalFormat df = new DecimalFormat("#.00");
        System.out.println("来了");

        List<Orders>orders = orderService.findAllTureOrders();

        System.out.println(orders);
        double sum = 0;
        int count = 0;
        for (int i = 0;i<orders.size();i++) {
            sum+=(new Double(String.valueOf(orders.get(i).getOrderMoney())));
            count++;
        }

        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("YYYY-MM-dd");
        String teDay = simpleDateFormat.format(date);
        request.getSession().setAttribute("teDay",teDay);
        System.out.println("今天"+teDay);
        Calendar calendar = Calendar.getInstance(); //创建Calendar 的实例
        calendar.add(Calendar.DAY_OF_MONTH,-1); //当前时间减去一天，即一天前的时间
        calendar.getTimeInMillis();//返回当前时间的毫秒数

        String yestDay = simpleDateFormat.format(calendar.getTime());
        System.out.println("昨天"+yestDay);

        List<Orders>teDayOrders = orderService.findAllTureOrdersByTime(teDay);
        double todayNum = teDayOrders.size();
        double todayMoney = 0;
        if(teDayOrders==null){
            todayMoney=0;
        }else {
            for (int i = 0;i<teDayOrders.size();i++) {
                todayMoney+=(new Double(String.valueOf(teDayOrders.get(i).getOrderMoney())));
            }
        }


        List<Orders>yestdayOrders = orderService.findAllTureOrdersByTime(yestDay);
        System.out.println("昨天销售数据"+yestdayOrders);

        double yesterdayMoney = 0;

        double yesterdayNum = yestdayOrders.size();

        if (yesterdayNum==0){
            yesterdayMoney = 0;
        }else {
            for (int i = 0;i<yestdayOrders.size();i++) {
                yesterdayMoney+=(new Double(String.valueOf(yestdayOrders.get(i).getOrderMoney())));
            }
        }

        DecimalFormat df = new DecimalFormat("0.00");
        df.setRoundingMode(RoundingMode.HALF_UP);
        //return df.format(value);


        double p= 0;
        String todayP = null;
        if(todayMoney!=0){
            double cha = todayMoney - yesterdayMoney;
            p = (cha/todayMoney)*100;
            //p = Double.parseDouble(df.format(p));
            todayP = df.format(p);
        }

        double numP = 0;
        String numP2 = null;

        if (todayNum!=0){
            double numCha = todayNum-yesterdayNum;
            numP = (numCha/todayNum)*100;
            //numP = Integer.parseInt(df.format(numP));

            numP2 = df.format(numP);

        }





        System.out.println(sum);
        System.out.println(count);
        request.getSession().setAttribute("money",sum);
        request.getSession().setAttribute("count",count);

        request.getSession().setAttribute("yesterdayNum",yesterdayNum);
        request.getSession().setAttribute("todayNum",todayNum);
        request.getSession().setAttribute("numP",numP2);

        request.getSession().setAttribute("yesterdayMoney",yesterdayMoney);
        request.getSession().setAttribute("todayMoney",todayMoney);
        //request.getSession().setAttribute("p",p);
        request.getSession().setAttribute("p",todayP);
        request.getSession().setAttribute("teDayOrders",teDayOrders);

    }

    @RequestMapping("/findJson")

    public void findOrdersToJson(HttpServletResponse response){
        System.out.println("图表加载");

        List<Orders> orders = orderService.findAllTureOrders();

        int xiaomi = 0;
        int huawei = 0;
        int apple = 0;
        int vivo = 0;
        int sx = 0;

        for (Orders orders1 :
        orders) {
            if (orders1.getProduceTypeNo()==2){
                xiaomi++;
            }else if(orders1.getProduceTypeNo()==3){
                huawei++;
            }else if(orders1.getProduceTypeNo()==4){
                apple++;
            }else if(orders1.getProduceTypeNo()==5){
                vivo++;
            }else if(orders1.getProduceTypeNo()==6){
                sx++;
            }
        }

        List<Integer>integers = new ArrayList<>();
        integers.add(xiaomi);
        integers.add(huawei);
        integers.add(apple);
        integers.add(vivo);
        integers.add(sx);

        List<String>strings = new ArrayList<>();
        strings.add("小米");
        strings.add("华为");
        strings.add("苹果");
        strings.add("VIVO");
        strings.add("三星");

        Chart chart = null;

        List<Chart>charts = new ArrayList<>();

        for (int i = 0; i<strings.size();i++) {
            chart.setTypeName(strings.get(i));
            chart.setProductNum(integers.get(i));
            charts.add(chart);
        }

        System.out.println(integers);

        String s = JSON.toJSONString(charts);
        PrintWriter out = null;
        try {
            out = response.getWriter();
        } catch (IOException e) {
            e.printStackTrace();
        }
        System.out.println(s);
        //System.out.println("电子产品");
        out.print(s);

        //return integers;

    }

}
