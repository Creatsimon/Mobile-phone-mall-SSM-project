package com.fx.controller;

import com.alibaba.fastjson.JSON;
import com.fx.entity.Produce;
import com.fx.entity.Recommend;
import com.fx.entity.Type;
import com.fx.entity.introduceImgPath;
import com.fx.service.ProduceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("produce")
public class ProductController {
    @Autowired
    private ProduceService produceService;

    @RequestMapping("/find")
    public void findProduceByProductTypeNo(HttpServletRequest request) {
        Type type = (Type) request.getSession().getAttribute("type");
        System.out.println(type);
        List<Produce>produce = produceService.findProduceByProductTypeNo(type.getProduceTypeNo());
        request.getSession().setAttribute("produces",produce);
    }

    @RequestMapping("/de")
    public String de(String produceNo,HttpServletRequest request) {
        Produce produce = produceService.findProduceByProduceNo(produceNo);
        List<introduceImgPath> introduceImgPath = produceService.findIntroduceImg(produceNo);
        request.getSession().setAttribute("introduceImgPath",introduceImgPath);
        request.getSession().setAttribute("produce",produce);
        //return "details";
        return "details2";
    }

    @RequestMapping("/findRecommend")
    @ResponseBody
    public String findRecommend(HttpServletRequest request){


        List<Recommend>recommends= produceService.findRecommend();

        request.getSession().setAttribute("recommends",recommends);

        System.out.println(recommends);

        System.out.println("------------------------");

        String s = JSON.toJSONString(recommends);

        System.out.println(s);

        return s;

    }

    @RequestMapping("/search")
    public String searchProduce(String produceName,HttpServletRequest request){

        String name = "%"+produceName+"%";
        List<Produce> produces = produceService.findProduceByName(name);
        request.getSession().setAttribute("produces",produces);

        return "produce";
    }

}
