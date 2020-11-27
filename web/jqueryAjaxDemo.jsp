<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/28 0028
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script>
        function but(){
            $.ajax({
                type:"get",
                url:"jqueryAjax.do",
                success:function(result){
                    $("#span").html(result);
                }
            });
        }
    </script>
</head>
<body>
<span id="span"></span>
<input type="button" value="OK" onclick="but()" />
</body>
</html>
