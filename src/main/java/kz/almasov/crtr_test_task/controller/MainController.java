package kz.almasov.crtr_test_task.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @GetMapping("/")
    public String addUserPage() {
        return "home";
    }
}
