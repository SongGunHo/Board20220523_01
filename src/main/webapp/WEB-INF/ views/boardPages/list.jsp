<%--
  Created by IntelliJ IDEA.
  User: 송근호
  Date: 2022-05-23
  Time: 오전 11:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jap:include page="../laout/header.jsp" flush="flase"></jap:include>
    <div class="container">
        <table class="table">
            <tr>
                <th>글번호</th>
                <th>작성자</th>
                <th>재목</th>
                <th>작성시간</th>
                <th>작성시간(fmt)</th>
                <th>조회수</th>
                <th>조회수</th>
            </tr>
        </table>
        <tr>
            <c:forEach items="${BoardList}" var="board">
        </tr>
    <tr>
    <td>${board.id}</td>
    <td>${member.boardWriter}</td>
   <td>재목을 클락을 하면 상새 조회 화면 나오게 (퍼라미터는id값)</td>
    <td>${board.memberPassword}</td>
    <td>${board.boardTitle}</td>
    <td><a href="/board/datail?id">${board.boardContents}</a></td>
    <td>${board.boardHits}</td>
    <td>formaDate pattern="yyyy-MM-dd hh:mm:ss" value="${board.boardCreatedDate}"></td>
    <td><a href="/detail?id=${member.id}">조회</a></td>
    <td><a href="/delete?id=${member.id}">삭제</a></td>
    <c><button class="btn btn-outline-info" onclick="detailByAjax('${member.id}')">조회</button>
        </c:forEach>
    </div>
</body>
</html>
