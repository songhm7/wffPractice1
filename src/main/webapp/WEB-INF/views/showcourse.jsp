<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>학년별 이수 학점 조회</title>
    <script>
        function toggleDetails(tableId) {
            var detailsTable = document.getElementById(tableId);
            if(detailsTable.style.display === "none") {
                detailsTable.style.display = "table";
            } else {
                detailsTable.style.display = "none";
            }
        }
    </script>
</head>
<body>
<p><a href="${pageContext.request.contextPath}/">홈으로 돌아가기</a></p>
<table border="1">
    <thead>
        <tr><th>년도</th><th>학기</th><th>취득 학점</th><th>상세보기</th></tr>
    </thead>
    <tbody>
        <tr><td>2019</td><td>1</td><td>${totalCredits2019_1}</td><td><a href="javascript:void(0)" onclick="toggleDetails('details2019_1')">상세보기</a></td></tr>
        <tr><td>2019</td><td>2</td><td>${totalCredits2019_2}</td><td><a href="javascript:void(0)" onclick="toggleDetails('details2019_2')">상세보기</a></td></tr>
        <tr><td>2020</td><td>1</td><td>${totalCredits2020_1}</td><td><a href="javascript:void(0)" onclick="toggleDetails('details2020_1')">상세보기</a></td></tr>
        <tr><td>2020</td><td>2</td><td>${totalCredits2020_2}</td><td><a href="javascript:void(0)" onclick="toggleDetails('details2020_2')">상세보기</a></td></tr>
        <tr><td>2023</td><td>1</td><td>${totalCredits2023_1}</td><td><a href="javascript:void(0)" onclick="toggleDetails('details2023_1')">상세보기</a></td></tr>
        <tr><td>2023</td><td>1</td><td>${totalCredits2023_2}</td><td><a href="javascript:void(0)" onclick="toggleDetails('details2023_2')">상세보기</a></td></tr>
        <tr><td>2024</td><td>1</td><td>${totalCredits2024_1}</td><td><a href="javascript:void(0)" onclick="toggleDetails('details2024_1')">상세보기</a></td></tr>
    </tbody>
    <tfoot>
        <tr><td>총계</td><td> </td><td>${totalCredits}</td><td> </td></tr>
    </tfoot>
</table>
<table border="1" id="details2019_1" style="display:none;">
    <thead>
    <tr><th>년도</th><th>학기</th><th>교과목명</th><th>교과구분</th><th>담당교수</th><th>학점</th></tr>
    </thead>
    <tbody>
    <c:forEach var="course" items="${courses2019_1}">
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
<table border="1" id="details2019_2" style="display:none;">
    <thead>
    <tr><th>년도</th><th>학기</th><th>교과목명</th><th>교과구분</th><th>담당교수</th><th>학점</th></tr>
    </thead>
    <tbody>
    <c:forEach var="course" items="${courses2019_2}">
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
<table border="1" id="details2020_1" style="display:none;">
    <thead>
    <tr><th>년도</th><th>학기</th><th>교과목명</th><th>교과구분</th><th>담당교수</th><th>학점</th></tr>
    </thead>
    <tbody>
    <c:forEach var="course" items="${courses2020_1}">
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
<table border="1" id="details2020_2" style="display:none;">
    <thead>
    <tr><th>년도</th><th>학기</th><th>교과목명</th><th>교과구분</th><th>담당교수</th><th>학점</th></tr>
    </thead>
    <tbody>
    <c:forEach var="course" items="${courses2020_2}">
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
<table border="1" id="details2023_1" style="display:none;">
    <thead>
    <tr><th>년도</th><th>학기</th><th>교과목명</th><th>교과구분</th><th>담당교수</th><th>학점</th></tr>
    </thead>
    <tbody>
    <c:forEach var="course" items="${courses2023_1}">
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
<table border="1" id="details2023_2" style="display:none;">
    <thead>
    <tr><th>년도</th><th>학기</th><th>교과목명</th><th>교과구분</th><th>담당교수</th><th>학점</th></tr>
    </thead>
    <tbody>
    <c:forEach var="course" items="${courses2023_2}">
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
<table border="1" id="details2024_1" style="display:none;">
    <thead>
    <tr><th>년도</th><th>학기</th><th>교과목명</th><th>교과구분</th><th>담당교수</th><th>학점</th></tr>
    </thead>
    <tbody>
    <c:forEach var="course" items="${courses2024_1}">
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
