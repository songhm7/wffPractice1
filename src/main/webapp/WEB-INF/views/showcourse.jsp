<%--
  Created by IntelliJ IDEA.
  User: HMsong
  Date: 2024-04-08
  Time: 오전 3:55
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:forEach var="course" items="${id_courses}" >
        <p> <c:out value="${course}"> </c:out> </p>
    </c:forEach>
    <a href="${pageContext.request.contextPath}/">홈으로 돌아가기</a>
</body>
</html>
