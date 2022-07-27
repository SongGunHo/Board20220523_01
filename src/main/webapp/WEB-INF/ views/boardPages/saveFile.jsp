<%--
  Created by IntelliJ IDEA.
  User: 송근호
  Date: 2022-05-23
  Time: 오전 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
</head>
<body>
<jap:include page="../laout/header.jsp" flush="flase"></jap:include>
<div class="container">
    <h2 class="display-4 fw-normal">save.jsp</h2>
    <div class="py-5 text-center">
    <form action="/board/saveFile" method="post" enctype="multipart/form-data">
    <input class="form-control mb-2" type="text" name="boardWriter" placeholder="boardWriter">
    <input class="form-control mb-2" type="text" name="boardTitle" placeholder="boardTitle">
    <input class="form-control mb-2" type=text" name="boardPassword" placeholder="boardPassword">
    <text class="form-control" name="boardContrents" rows="5" color="10"></text>
    첨부파일: <input type="file" name="boardFile">
    <button class="btn btn-primary" type="submit" value="글작성"></button> <%-- / 업으면 주소가 덮혀진다 --%>
    </form>
    </div>
    </div>
</body>
</html>
