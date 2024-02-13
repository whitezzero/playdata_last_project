package com.springboot.project4.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
    @GetMapping("/")
    public String mainPage() {
        return "main.jsp"; // 메인 페이지
    }

    @GetMapping("/login")
    public String showLoginPage() {
        return "login.jsp"; // 로그인 페이지
    }

    @GetMapping("/register")
    public String showRegisterPage() {
        return "register.jsp"; // 회원가입 페이지
    }

    @GetMapping("/list")
    public String listPage() {
        return "list.jsp"; // 회원가입 페이지
    }

    @GetMapping("/detail")
    public String detailPage() {
        return "detail.jsp"; // 회원가입 페이지
    }

    @GetMapping("/board_list")
    public String boardList() {return "board_list.jsp";}

    @GetMapping("/board_write")
    public String boardWrite() {
        return "board_write.jsp";
    }

    @GetMapping("/board_detail")
    public String boardDetail() {
        return "post_detail.jsp";
    }

    @GetMapping("/board_delete")
    public String boardDelete() {
        return "post_delete.jsp";
    }
}
