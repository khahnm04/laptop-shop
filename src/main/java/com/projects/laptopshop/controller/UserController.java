package com.projects.laptopshop.controller;

import com.projects.laptopshop.domain.User;
import com.projects.laptopshop.repository.UserRepository;
import com.projects.laptopshop.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {

    private final UserService userService;

    public UserController(
        UserService userService
    ) {
        this.userService = userService;
    }

    @GetMapping("/")
    public String getHomePage(Model model) {
        model.addAttribute("value1", "test");
        model.addAttribute("value2", "from controller with model");
        return "hello";
    }

    @GetMapping("/admin/user")
    public String getUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }

    @PostMapping("/admin/user/create1")
    public String createUserPage(
        Model model,
        @ModelAttribute("newUser") User user
    ) {
        System.out.println(">>>>> run here " + user);
        this.userService.handleSaveUser(user);
        return "hello";
    }

}
