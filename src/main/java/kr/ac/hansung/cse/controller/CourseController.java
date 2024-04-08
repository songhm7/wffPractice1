package kr.ac.hansung.cse.controller;

import kr.ac.hansung.cse.model.Course;
import kr.ac.hansung.cse.model.Offer;
import kr.ac.hansung.cse.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class CourseController {
    @Autowired
    private CourseService courseService;

    @GetMapping("/showcourse")
    public String showCourse(Model model){
        List<Course> courses = courseService.getAllCourses();
        model.addAttribute("id_courses", courses);
        return "showcourse";
    }
    @GetMapping("/registercourse")
    public String registerCourse(Model model){

        return "registercourse";
    }

    @GetMapping("/showregister")
    public String showRegister(Model model){

        return "showregister";
    }
}
