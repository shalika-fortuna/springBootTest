package com.school.school.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * @author Shalika Jayathilaka
 */
@Controller
public class ApplicationController {

    @RequestMapping("/home")
    @ResponseBody
    public String Hello(){
        return "Hello form spring";
    }

    @RequestMapping("/welcome")
    public String welcome(){
        return "welcomePage";
    }

    @RequestMapping("/login")
    public String login(){

        return "welcomePage";
    }

    @PostMapping("/save-user")
    public String registerUser(BindingResult bindingResult, HttpServletRequest request){
        // user Service to save the user
        request.setAttribute("mode","MODE_HOME");
        return "welcomePage";
    }
}
