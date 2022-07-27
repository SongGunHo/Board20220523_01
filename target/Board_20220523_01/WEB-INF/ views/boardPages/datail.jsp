<%--
  Created by IntelliJ IDEA.
  User: 송근호
  Date: 2022-05-24
  Time: 오전 9:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2></h2>
    글번호${board.id}<br>
    작성자${board.Writer}<br>
    재목${board.boardTitle}<br>
    작성시간${board.boardContents}<br>

    <button onclick="boardUpdate()">수정</button>
    <button onclick="boardDelete()">삭제</button>
    <button onclick="findAll()">목록</button>
</body>
    <script>
        const boardUpdate =()=>{
            location.href="/board/update-form?id=${board.id}"

        }
        const boardDelete=()=>{
            location.href="/board/passwordCheck?id=${board.id}";
        }
        const findAll =()=>{
            location.href="/board/findAll"
        }
    </script>
</html>
