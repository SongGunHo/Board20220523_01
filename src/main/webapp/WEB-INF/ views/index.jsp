<%--
  Created by IntelliJ IDEA.
  User: 송근호
  Date: 2022-05-23
  Time: 오전 9:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script>
        const saveForm =() => {
            location.href="/board/save";
        }
        const findAll =()=>{
            location.href="/board/findAll";
        }

    </script>
</head>
<body>
    <h2>index.jsp</h2>
    <button class="btn btn-outline-success" onclick="saveForm()">글작성</button>
    <button class="btn btn-outline-success" onclick="saveFileForm()">글작성(파일)</button>
    <button class="btn btn-outline-success" onclick="findAll()">글목록</button>
</body>
</html>
