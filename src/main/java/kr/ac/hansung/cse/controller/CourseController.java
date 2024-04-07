package kr.ac.hansung.cse.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class CourseController {
    @GetMapping("/showcourse")
    public String showCourse(Model model){

        return "showcourse";
    }
    @GetMapping("/registercourse")
    public String registerCredit(Model model){

        return "registercourse";
    }
}
