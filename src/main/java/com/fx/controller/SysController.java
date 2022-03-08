package com.fx.controller;

import com.fx.entity.*;
import com.fx.service.ProduceService;
import com.fx.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("sys")
public class SysController {

    @Autowired
    private TypeService typeService;

    @Autowired
    private ProduceService produceService;

    @RequestMapping("/findType")
    public String findType(Produce produce,HttpServletRequest request){

        return "addProduce";
    }

    @RequestMapping("/addProduce")
    public String addProduce(Produce produce,HttpServletRequest request,HttpServletResponse response, @RequestParam("file") CommonsMultipartFile file){

        System.out.println(produce);

        InputStream is = null;
        OutputStream os = null;
        OutputStream os2 = null;


        String imgPath= "img\\addImg\\"+System.currentTimeMillis()+file.getOriginalFilename();
        String imgPath2 = "img/addImg/"+System.currentTimeMillis()+file.getOriginalFilename();

        try {
            is = file.getInputStream();
            os = new FileOutputStream(new File("D:\\space\\Finally\\src\\main\\webapp\\"+imgPath));
            //os2 = new FileOutputStream(new File(path+"\\"+newImg));

            int i;

            while ((i = is.read()) != -1){
                os.write(i);
                //os2.write(i);
            }

            os.flush();
            //os2.flush();

        } catch (IOException e) {
            e.printStackTrace();
        }finally {
            try {
                //os2.close();
                os.close();
                is.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        produce.setImgPath(imgPath);
        String produceNo = UUID.randomUUID().toString().replaceAll("-","");
        request.getSession().setAttribute("addProduceNo",produceNo);
        produce.setProduceNo(produceNo);

        System.out.println(produce);

        produceService.addProduce(produce);

        return "addColor";
    }

    @RequestMapping("/addLunboImg")
    public String addLunboImg(HttpServletRequest request,HttpServletResponse response, @RequestParam("file") CommonsMultipartFile file){

        String addProduceNo = (String) request.getSession().getAttribute("addProduceNo");

        System.out.println(file);

        InputStream is = null;
        OutputStream os = null;

        String imgPath= "img\\addImg\\"+System.currentTimeMillis()+file.getOriginalFilename();
        System.out.println(imgPath);

        try {
            is = file.getInputStream();
            os = new FileOutputStream(new File("D:\\space\\Finally\\src\\main\\webapp\\"+imgPath));
            //os2 = new FileOutputStream(new File(path+"\\"+newImg));

            int i;

            while ((i = is.read()) != -1){
                os.write(i);

            }
            os.flush();

        } catch (IOException e) {
            e.printStackTrace();
        }finally {
            try {

                os.close();
                is.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        lunboImgPath lunboImgPath = new lunboImgPath();
        lunboImgPath.setImgPath(imgPath);
        lunboImgPath.setProduceNo(addProduceNo);

        produceService.addLunboImg(lunboImgPath);

        return "addLunboImg";
    }

    @RequestMapping("/addIntroduceImg")
    public String addIntroduceImg(HttpServletRequest request,HttpServletResponse response, @RequestParam("file") CommonsMultipartFile file){
        String addProduceNo = (String) request.getSession().getAttribute("addProduceNo");

        System.out.println(file);

        InputStream is = null;
        OutputStream os = null;

        String imgPath= "img\\addImg\\"+System.currentTimeMillis()+file.getOriginalFilename();
        System.out.println(imgPath);

        try {
            is = file.getInputStream();
            os = new FileOutputStream(new File("D:\\space\\Finally\\src\\main\\webapp\\"+imgPath));
            //os2 = new FileOutputStream(new File(path+"\\"+newImg));

            int i;

            while ((i = is.read()) != -1){
                os.write(i);

            }
            os.flush();

        } catch (IOException e) {
            e.printStackTrace();
        }finally {
            try {

                os.close();
                is.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        introduceImgPath introduceImgPath = new introduceImgPath();

        introduceImgPath.setProduceNo(addProduceNo);
        introduceImgPath.setImgPath(imgPath);

        produceService.addIntroduceImg(introduceImgPath);

        return "addIntroduceImg";
    }

    @RequestMapping("/addColor")
    public String addColor(Color color,HttpServletRequest request){

        String addProduceNo = (String) request.getSession().getAttribute("addProduceNo");

        String colorStr = color.getColor();
        List<String>strs= Until.strToList(colorStr);

        List<Color>colors = new ArrayList<>();

        int count = 1;

        for (int i = 0;i<strs.size();i++){
            Color color1 = new Color();
            color1.setProduceNo(addProduceNo);
            color1.setColor(strs.get(i));
            color1.setColorId(count);
            colors.add(color1);
            count++;
        }

        for (Color color2:
             colors) {
            produceService.addColor(color2);
        }

        return "addRam";

    }

    @RequestMapping("/addRam")
    public String addRam(Ram ram,HttpServletRequest request){

        String addProduceNo = (String) request.getSession().getAttribute("addProduceNo");

        List<String>ramStr = Until.strToList(ram.getRam());
        List<String>priceStr = Until.strToList(ram.getProduceNo());

        List<Ram> rams = new ArrayList<>();

        int count = 1;

        for (int i = 0;i<ramStr.size();i++){
            Ram ram1 = new Ram();
            ram1.setRam(ramStr.get(i));
            ram1.setPrice(new BigDecimal(priceStr.get(i)));
            ram1.setProduceNo(addProduceNo);
            ram1.setRamId(count);
            rams.add(ram1);
            count++;
        }

        for (Ram ram2:
             rams) {
            produceService.addRam(ram2);
        }

        return "addLunboImg";
    }

}
