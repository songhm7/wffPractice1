<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
  <head>
    <title>한성대학교 학사정보시스템 (웹프워2 과제1 1991203송형민) </title>
    <style>
      /* 상단 바 스타일 */
      .topBar {
        background-color: #0A4DA1;
        /*padding: 10px 0;*/
        color: white;
        text-align: center;
        display: flex;
        justify-content: space-between;/* 수평선상에서 중앙 정렬 */
        align-items: center;    /* 수직선상에서 중앙 정렬 */
      }
      .titleOfPage{
        font-size : 25px;
      }
      /* 버튼 스타일 */
      .button {
        background-color: #626466;
        border: none;
        color: white;
        padding: 15px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        margin: 20px;
        cursor: pointer;
      }
      /* 로그인/로그아웃 버튼 스타일 */
      .login-logout-btn {
        float: right;
        margin-left: auto;
        margin-right: 20px;
      }
      .icon{
        margin-left: 0;
        display: block;
        margin-right: auto;
      }
    </style>
  </head>
  <body>
    <div class="topBar">
      <img class="icon" width="300" height="100" src="<c:url value='/resources/images/hansungIcon.png'/>" alt="Hansung Icon" >
        <span class="titleOfPage">한성대학교 학사정보시스템</span>
      <c:if test="${pageContext.request.userPrincipal.name != null}">
        <a href="javascript:document.getElementById('logout').submit()" class="button login-logout-btn">로그아웃</a>
      </c:if>
      <c:if test="${pageContext.request.userPrincipal.name == null}">
        <a href="<c:url value='/login'/>" class="button login-logout-btn">로그인</a>
      </c:if>
    </div>
    <p> <a href="${pageContext.request.contextPath}/showcredit"> 학점조회</a></p>
    <p> <a href="${pageContext.request.contextPath}/registercourse"> 수강신청</a></p>
    <p> <a href="${pageContext.request.contextPath}/showcourse"> 수강신청조회</a></p>
    <p> <a href="${pageContext.request.contextPath}/createoffer"> Create Offer</a></p>
    <p> <a href="${pageContext.request.contextPath}/offers"> Show Offer</a></p>
    <form id="logout"  action="<c:url value="/logout" />"method="post">
      <input type="hidden" name="${_csrf.parameterName}"value="${_csrf.token}" />
    </form>

  </body>
</html>
