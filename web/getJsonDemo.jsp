<%--
  Created by IntelliJ IDEA.
  User: STRIDE
  Date: 2020/11/26
  Time: 23:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery.js"></script>
    <script>
        function but(){
            var userid = $("#userid").val();
            var username = $("#username").val();
            $.getJSON("jsonDemo.do",{id:userid, name:username},function(result){
                alert(result.userid+" "+result.username);
                $("#span").html(result.userid+" "+result.username);
            });
        }
    </script>
</head>
<body>
用户ID：<input type="text" id="userid"/><br/>
用户姓名：<input type="text" id="username"/><br/>
<span id="span"></span>
<input type="button" value="OK" onclick="but()"/>
</body>
</html>
