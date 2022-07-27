<%--
  Created by IntelliJ IDEA.
  User: 송근호
  Date: 2022-05-24
  Time: 오전 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<input>
<head>
    <title>Title</title>
</head>
<input>
    <h2>passwordCheck.jsp</h2>
    <form action="/board/dalete" method="post"></form>
    <label for="paswwordConfirm">비밀번호을입력해주세요</label>
    <input type="text" id="paswwordConfirm"></input><br>
    <input type="button" onclick="passwordCheck()" >
</body>
    <script>
        const passwordCheck =()={
            const passwordConfirm = document.getElementById("passwordConfirm").value;
            const passwordDB =`${board.boardPassword}`;
            if (passwordConfirm == passwordDB){
            location.href="/board/dalete";
            }else{
                alert("비밀번호 일치");
                location.href="/board/dateil?=${board.id}";
        }


        }
    </script>
</html>
