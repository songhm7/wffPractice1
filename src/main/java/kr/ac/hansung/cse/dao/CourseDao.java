package kr.ac.hansung.cse.dao;

import kr.ac.hansung.cse.model.Course;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class CourseDao {
    private JdbcTemplate jdbcTemplate;  // psa(portable service abstraction, sql(x) api
    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public List<Course> getAllCourses() {
        String sql = "SELECT * FROM courses"; // 'courses'는 데이터베이스의 테이블 이름입니다.
        return jdbcTemplate.query(sql, new RowMapper<Course>() {
            @Override
            public Course mapRow(ResultSet rs, int rowNum) throws SQLException {
                Course course = new Course();
                course.setYear(rs.getInt("year"));
                course.setSemester(rs.getInt("semester"));
                course.setId(rs.getString("id"));
                course.setName(rs.getString("name"));
                course.setKind(rs.getString("kind"));
                course.setTeacher(rs.getString("teacher"));
                course.setCredit(rs.getInt("credit"));
                return course;
            }
        });
    }

    public List<Course> getPeriodCourses(int year, int semester) {
        String sql = "SELECT * FROM courses WHERE year = ? AND semester = ?";
        return jdbcTemplate.query(sql, new Object[]{year, semester}, new RowMapper<Course>() {
            @Override
            public Course mapRow(ResultSet rs, int rowNum) throws SQLException {
                Course course = new Course();
                course.setYear(rs.getInt("year"));
                course.setSemester(rs.getInt("semester"));
                course.setId(rs.getString("id"));
                course.setName(rs.getString("name"));
                course.setKind(rs.getString("kind"));
                course.setTeacher(rs.getString("teacher"));
                course.setCredit(rs.getInt("credit"));
                return course;
            }
        });
    }

    // Crud method
    public boolean insert(Course course) {
        int year = course.getYear();
        int semester = course.getSemester();
        String id = course.getId();
        String name= course.getName();
        String kind= course.getKind();
        String teacher= course.getTeacher();
        int credit= course.getCredit();

        String sqlStatement= "insert into courses (year, semester, id, name, kind, teacher, credit) values (?,?,?,?,?,?,?)";

        return (jdbcTemplate.update(sqlStatement, new Object[] {year, semester, id, name, kind, teacher, credit}) == 1);
    }
}
