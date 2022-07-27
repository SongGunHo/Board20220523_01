<%--
  Created by IntelliJ IDEA.
  User: 송근호
  Date: 2022-05-24
  Time: 오후 2:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/bootsrap.min.css">
</head>
<body>
    <h2>update.jsp</h2>
    <form action="/board/update" method="post" name="updateForm"></form>
    <input type="text" name="id" value="${board.id}" class="fom-control" readonly>
    <input type="text" name="boardTitle" value="${board.Title}" class="fom-control">
    <input type="text" name="boardWriter" value="${board.Writer}" class="fom-control" readonly>
    <input type="text" name="boardPassword" id="passwordConfirm" class="fom-control">
    <input type="text" name="boardContents" value="${board.Contents}" class="fom-control">
    <textarea name="boardContents" cols="30" rows="10"${boardUpdate.board.boardContents}></textarea>
    <input type="button"  class="btn btn-danger"  value="수정" onclick="boardUpdate()">
</body>
    <script>
        const boardUpdate =()=>{
           // const passwordConfirm = document.querySelector("#passwordConfirm").value;
            const passwordConfirm = document.getElementById("passwordConfirm").value;
            const passwordDB = `${boarUpdate.boardPassword}`;
            if(passwordConfirm ==passwordDB){
                updateForm.submit();
            }else {
                alert("비밀번호 불일치 !!!");
            }

        }
    </script>
</html>
