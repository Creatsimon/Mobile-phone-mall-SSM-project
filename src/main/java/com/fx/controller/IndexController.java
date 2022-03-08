package com.fx.controller;

import com.fx.entity.Produce;
import com.fx.entity.Type;
import com.fx.service.ProduceService;
import com.fx.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("index")
public class IndexController {

    @Autowired
    private TypeService typeService;

    @Autowired
    private ProduceService produceService ;

    @RequestMapping("/findType")
    public String findType(Integer typeNo, HttpServletRequest request){
        typeNo = typeNo == null ? 0 : typeNo;
        List<Type>types = typeService.findPhoneType(typeNo);
        request.getSession().setAttribute("types",types);
        //return "index";
        return "boot";
    }

    @RequestMapping("/produce")
    public String xiaomi(Integer produceTypeNo,HttpServletRequest request){
        //Type type = typeService.findTypeByPath(path);
        /*System.out.println(type);
        request.getSession().setAttribute("type",type);*/
        if (produceTypeNo==0){
            return "lunbo2";
        }else {
            List<Produce>produce = produceService.findProduceByProductTypeNo(produceTypeNo);
            request.getSession().setAttribute("produces",produce);
            return "produce";
        }
    }



}
