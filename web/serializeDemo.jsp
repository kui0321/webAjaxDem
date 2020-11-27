<%--
  Created by IntelliJ IDEA.
  User: STRIDE
  Date: 2020/11/27
  Time: 0:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery.js"></script>
    <script>
        function but(){
            var param = $("#form").serialize();
            alert(param);
            $.ajax({
                type:"get",
                url:"data.do",
                data:param,
                success:function(result){
                    $("#span").html(result);
                }
            });
        }
    </script>
</head>
<body>
<form id="form">
    用户ID：<input type="text" name="id" id="userid"/><br/>
    用户姓名：<input type="text" name="name" id="username"/><br/>
</form>
<span id="span"></span>
<input type="button" value="OK" onclick="but()"/>
</body>
</html>
