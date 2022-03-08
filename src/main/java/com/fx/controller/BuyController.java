package com.fx.controller;

import com.fx.entity.*;
//import com.fx.service.BuyService;
import com.fx.service.OrderService;
import com.fx.service.ProduceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("buy")
public class BuyController {

    @Autowired
    private ProduceService produceService;

    @Autowired
    private OrderService orderService;

    @RequestMapping("/color")
    @ResponseBody
    public String buyColor(Integer colorId,HttpServletRequest request){

        Produce produce = (Produce) request.getSession().getAttribute("produce");

        Color color = produceService.findColorByProduceNo(produce.getProduceNo(),colorId);

        request.getSession().setAttribute("colors",color);

        return color.getColor();
    }

    @RequestMapping("/ram")
    @ResponseBody
    public String buyRam(Integer ramId,HttpServletRequest request){

        Produce produce = (Produce) request.getSession().getAttribute("produce");

        Ram ram = produceService.findRamByProduceNoAndRamId(produce.getProduceNo(),ramId);


        BigDecimal price = ram.getPrice();

        request.getSession().setAttribute("rams",ram);

        return price.toString();

    }

    @RequestMapping("/buyPhone")
    //@ResponseBody
    public String buyPhone(HttpServletRequest request){
        User user = (User)request.getSession().getAttribute("user");
        Produce produce = (Produce)request.getSession().getAttribute("produce");
        Color color = (Color)request.getSession().getAttribute("colors");
        Ram ram = (Ram)request.getSession().getAttribute("rams");

        Orders orders = new Orders();
        orders.setOrderId(UUID.randomUUID().toString().replaceAll("-",""));
        orders.setOrderTime(new Date());
        orders.setColor(color.getColor());
        orders.setRam(ram.getRam());
        orders.setProduceNo(produce.getProduceNo());
        orders.setUsername(user.getUsername());
        orders.setProduceName(produce.getTitle());
        orders.setOrderMoney(ram.getPrice());
        orders.setOrderMoney(ram.getPrice());
        orders.setImgPath(produce.getImgPath());
        orders.setProduceTypeNo(produce.getProduceTypeNo());

        String oId = orders.getOrderId();
        request.getSession().setAttribute("oId",oId);

        String title = produce.getTitle()+" "+color.getColor()+" "+ram.getRam();
        request.getSession().setAttribute("title",title);

        String money = ram.getPrice().toString();
        request.getSession().setAttribute("money",money);

        request.getSession().setAttribute("orders",orders);

        System.out.println(orders);


        return "alipay.trade.page.pay";

    }

    @RequestMapping("/buygoods")
    public String buyGoods(String produceNo, HttpServletRequest request){

        Produce produce = produceService.findProduceByProduceNo(produceNo);
        System.out.println(produce);

        List<lunboImgPath>lunboImgPaths = produceService.findImg(produceNo);
        request.getSession().setAttribute("lunboImgPaths",lunboImgPaths);


        List<Ram>ram= produceService.findAllRam(produceNo);
        List<Color>color=produceService.findAllColor(produceNo);

        request.getSession().setAttribute("produce",produce);

        request.getSession().setAttribute("color",color);
        request.getSession().setAttribute("ram",ram);

        return "buy2";

    }

    @RequestMapping("/addShoppingCat")
    public String addShoppingCat(HttpServletRequest request){
        User user = (User)request.getSession().getAttribute("user");
        Produce produce = (Produce)request.getSession().getAttribute("produce");
        Color color = (Color)request.getSession().getAttribute("colors");
        Ram ram = (Ram)request.getSession().getAttribute("rams");

        Orders orders = new Orders();
        orders.setOrderId(UUID.randomUUID().toString().replaceAll("-",""));
        orders.setOrderTime(new Date());
        orders.setColor(color.getColor());
        orders.setRam(ram.getRam());
        orders.setProduceNo(produce.getProduceNo());
        orders.setUsername(user.getUsername());
        orders.setProduceName(produce.getTitle());
        orders.setOrderMoney(ram.getPrice());
        orders.setOrderMoney(ram.getPrice());
        orders.setImgPath(produce.getImgPath());
        orders.setProduceTypeNo(produce.getProduceTypeNo());

        orderService.addShoppingCat(orders);

        return "order2";

    }

}
