<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>수강신청조회</title>
</head>
<body>
    <p><a href="${pageContext.request.contextPath}/">홈으로 돌아가기</a></p>
    <table border="1">
        <thead>
        <tr><th>년도</th><th>학기</th><th>교과목명</th><th>교과구분</th><th>담당교수</th><th>학점</th></tr>
        </thead>
        <tbody>
        <c:forEach var="course" items="${courses2024_2}">
            <tr>
                <td>${course.year}</td>
                <td>${course.semester}</td>
                <td>${course.name}</td>
                <td>${course.kind}</td>
                <td>${course.teacher}</td>
                <td>${course.credit}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</body>
</html>
