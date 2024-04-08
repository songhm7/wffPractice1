package kr.ac.hansung.cse.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import javax.validation.constraints.*;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class Course {

    @Min(value = 1900, message="년도는 1900년 이후여야 합니다")
    private int year;

    @Min(value = 1, message="학기는 최소 1이어야 합니다")
    @Max(value = 2, message="학기는 최대 2일 수 있습니다")
    private int semester;

    @NotEmpty(message="과목코드는 비워둘 수 없습니다")
    private String id;

    @NotEmpty(message="교과목명은 비워둘 수 없습니다")
    private String name;

    @NotEmpty(message="교과구분은 비워둘 수 없습니다")
    private String kind;

    @NotEmpty(message="담당교수는 비워둘 수 없습니다")
    private String teacher;

    @Min(value = 1, message="학점은 최소 1이어야 합니다")
    private int credit;
}
