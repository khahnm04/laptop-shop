package com.projects.laptopshop.controller;

import com.projects.laptopshop.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

    private UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/home")
    public String getHomePage() {
        String test = this.userService.handleHello();
        return "home.html";
    }

}
