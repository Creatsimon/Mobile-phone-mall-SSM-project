package com.fx.controller;

import com.fx.entity.User;
import com.fx.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("user")
public class LoginController {

    @Autowired
    private UserService userService;

    @RequestMapping("/login")
    @ResponseBody
    public String Login(User user, HttpServletRequest request){

        User u = userService.doLogin(user.getUsername());

        System.out.println(u);

        if (u == null){
            return "0";
        }else {
            if(user.getPassword().equals(u.getPassword())){
                request.getSession().setAttribute("user",u);
                return "1";
            }
            else {
                return "2";
            }
        }
    }

    @RequestMapping("/reg")
    @ResponseBody
    public String doReg(User user){
        try {
            userService.addUser(user);
            return "1";
        }catch (Exception e){
            return "0";
        }
    }

    @RequestMapping("/out")
    public String signOut(HttpServletRequest request){
        request.getSession().invalidate();
        return "boot";
    }
}
