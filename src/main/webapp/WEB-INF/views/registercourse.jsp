<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/resources/css/main.css" >

</head>
<body>
<sf:form method="post" action="${pageContext.request.contextPath}/doregister" modelAttribute="course">
    <table border = "1" class="formtable">
        <tr>
            <td class="label"> 년도:</td>
            <td><sf:input class="control" type="text" path="year"/>  <br/>
                <sf:errors path="year" class="error"/>
            </td>
        </tr>
        <tr>
            <td class="label"> 학기:</td>
            <td><sf:input class="control" type="text" path="semester"/>  <br/>
                <sf:errors path="semester" class="error"/>
            </td>
        </tr>
        <tr>
            <td class="label"> 과목코드:</td>
            <td><sf:input class="control" type="text" path="id"/>  <br/>
                <sf:errors path="id" class="error"/>
            </td>
        </tr>
        <tr>
            <td class="label"> 교과목명:</td>
            <td><sf:input class="control" type="text" path="name"/>  <br/>
                <sf:errors path="name" class="error"/>
            </td>
        </tr>
        <tr>
            <td class="label"> 교과구분:</td>
            <td><sf:input class="control" type="text" path="kind"/> <br/>
                <sf:errors path="kind" class="error" />
            </td>
        </tr>
        <tr>
            <td class="label"> 담당교수:</td>
            <td><sf:input class="control" type="text" path="teacher"/> <br/>
                <sf:errors path="teacher" class="error" />
            </td>
        </tr>
        <tr>
            <td class="label"> 학점:</td>
            <td><sf:input class="control" type="text" path="credit"/> <br/>
                <sf:errors path="credit" class="error" />
            </td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="수강신청"/> </td>
        </tr>
    </table>
</sf:form>
<a href="${pageContext.request.contextPath}/">홈으로 돌아가기</a>
</body>
</html>
