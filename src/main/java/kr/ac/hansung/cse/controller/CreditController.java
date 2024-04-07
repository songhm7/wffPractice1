package kr.ac.hansung.cse.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CreditController {
    @GetMapping ("/showcredit")
    public String showCredit(Model model){

        return "showcredit";
    }
}
