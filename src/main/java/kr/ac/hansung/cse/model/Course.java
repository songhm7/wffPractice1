package kr.ac.hansung.cse.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class Course {

    @NotEmpty(message="년도는 비워둘 수 없습니다")
    private int year;

    @NotEmpty(message="학기는 비워둘 수 없습니다")
    private int semester;

    @NotEmpty(message="과목코드는 비워둘 수 없습니다")
    private String id;

    @Size(min=2, max=100, message = "Name must be between 2 and 100 chars")
    private String name;

    @NotEmpty(message="교과구분은 비워둘 수 없습니다")
    private String kind;

    @NotEmpty(message="담당교수는 비워둘 수 없습니다")
    private String teacher;

    @NotEmpty(message="학점은 비워둘 수 없습니다")
    private int credit;
}
