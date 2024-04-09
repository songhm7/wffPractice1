package kr.ac.hansung.cse.controller;

import kr.ac.hansung.cse.model.Course;
import kr.ac.hansung.cse.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;
import java.util.List;

@Controller
public class CourseController {
    @Autowired
    private CourseService courseService;

    @GetMapping("/showcourse")
    public String showCourse(Model model){
        List<Course> courses2019_1 = courseService.getPeriodCourses(2019,1);
        List<Course> courses2019_2 = courseService.getPeriodCourses(2019,2);
        List<Course> courses2020_1 = courseService.getPeriodCourses(2020,1);
        List<Course> courses2020_2 = courseService.getPeriodCourses(2020,2);
        List<Course> courses2023_1 = courseService.getPeriodCourses(2023,1);
        List<Course> courses2023_2 = courseService.getPeriodCourses(2023,2);
        List<Course> courses2024_1 = courseService.getPeriodCourses(2024,1);

        int totalCredits2019_1 = courseService.getTotalCreditsForPeriod(2019,1);
        int totalCredits2019_2 = courseService.getTotalCreditsForPeriod(2019,2);
        int totalCredits2020_1 = courseService.getTotalCreditsForPeriod(2020,1);
        int totalCredits2020_2 = courseService.getTotalCreditsForPeriod(2020,2);
        int totalCredits2023_1 = courseService.getTotalCreditsForPeriod(2023,1);
        int totalCredits2023_2 = courseService.getTotalCreditsForPeriod(2023,2);
        int totalCredits2024_1 = courseService.getTotalCreditsForPeriod(2024,1);

        model.addAttribute("courses2019_1", courses2019_1);
        model.addAttribute("courses2019_2", courses2019_2);
        model.addAttribute("courses2020_1", courses2020_1);
        model.addAttribute("courses2020_2", courses2020_2);
        model.addAttribute("courses2023_1", courses2023_1);
        model.addAttribute("courses2023_2", courses2023_2);
        model.addAttribute("courses2024_1", courses2024_1);
        model.addAttribute("totalCredits2019_1", totalCredits2019_1);
        model.addAttribute("totalCredits2019_2", totalCredits2019_2);
        model.addAttribute("totalCredits2020_1", totalCredits2020_1);
        model.addAttribute("totalCredits2020_2", totalCredits2020_2);
        model.addAttribute("totalCredits2023_1", totalCredits2023_1);
        model.addAttribute("totalCredits2023_2", totalCredits2023_2);
        model.addAttribute("totalCredits2024_1", totalCredits2024_1);
        model.addAttribute("totalCredits",
                totalCredits2019_1+totalCredits2019_2+totalCredits2020_1+totalCredits2020_2+
                        totalCredits2023_1+totalCredits2023_2+totalCredits2024_1);

        return "showcourse";
    }
    @GetMapping("/showregister")
    public String showRegister(Model model){
        List<Course> courses2024_2 = courseService.getPeriodCourses(2024,2);
        model.addAttribute("courses2024_2", courses2024_2);

        return "showregister";
    }
    @GetMapping("/registercourse")
    public String registerCourse(Model model){
        model.addAttribute("course", new Course());

        return "registercourse";
    }

    @PostMapping("/doregister")
    public String doCreate(Model model, @Valid Course course, BindingResult result) {

        // System.out.println(course);
        if(result.hasErrors()) {
            System.out.println("== Form data does not validated ==");

            List<ObjectError> errors = result.getAllErrors();

            for(ObjectError error:errors) {
                System.out.println(error.getDefaultMessage());
            }

            return "registercourse";
        }

        // Controller -> Service -> Dao
        courseService.insert(course);

        return "registercreated";
    }


}
