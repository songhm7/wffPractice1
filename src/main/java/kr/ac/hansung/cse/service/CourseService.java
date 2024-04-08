package kr.ac.hansung.cse.service;

import kr.ac.hansung.cse.dao.CourseDao;
import kr.ac.hansung.cse.model.Course;
import kr.ac.hansung.cse.model.Offer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourseService {

    @Autowired
    private CourseDao courseDao;

    public List<Course> getAllCourses() {
        return courseDao.getAllCourses();
    }

    public List<Course> getPeriodCourses(int year, int semester)
    {
        return courseDao.getPeriodCourses(year, semester);
    }

    public int getTotalCreditsForPeriod(int year, int semester) {
        List<Course> courses = getPeriodCourses(year, semester);
        int totalCredits = 0;
        for(Course course : courses) {
            totalCredits += course.getCredit();
        }
        return totalCredits;
    }
    public void insert(Course course) {
        courseDao.insert(course);
    }

}