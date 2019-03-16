package com.aydin.demo.teambravowiki.controller;


import com.aydin.demo.teambravowiki.webservice.client.UserProfileClient;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.aydin.demo.teambravowiki.model.UserInfo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@Controller
public class HomeController {
    private UserProfileClient userProfileClient = new UserProfileClient();
    private UserInfo userInfo;
    @RequestMapping("/*")
    public String login(){
        return "login.jsp";
    }

    @PostMapping("/authentication")
    public String authenticator(HttpServletRequest request){
        String userid = userProfileClient.authentication(request.getParameter("email"), request.getParameter("password"));
        if(!userid.equals("0")){
            System.out.println("Welcome user");
            return "redirect:/userProfile" + userid;
        }
        System.out.println("Not a user");
        return "login.jsp";
    }

    @RequestMapping("/userProfile{userId}")
    public String userProfile(@PathVariable("userId") int userId, HttpSession session) {
        userInfo = userProfileClient.getUserInfo(userId);
        session.setAttribute("userInfo", userInfo);
        return "userProfile.jsp";
    }
}
