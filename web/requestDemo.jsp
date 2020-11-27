<%--
  Created by IntelliJ IDEA.
  User: STRIDE
  Date: 2020/11/26
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script>
        function but(){
            var id = document.getElementById("userid").value;
            var name = document.getElementById("username").value;
            var obj = {userid:id,username:name};
            var content = JSON.stringify(obj);
            alert(content);
            var xhr = new XMLHttpRequest();
            xhr.open("post", "json.do");
            xhr.send(content);
            xhr.onreadystatechange = function (){
                if(xhr.readyState == 4 && xhr.status == 200){
                    alert(xhr.responseText);
                    document.getElementById("span").innerHTML = xhr.responseText;
                }
            }

        }
    </script>
</head>
<body>
<h3>在请求中通过JSON格式传递数据</h3>
<hr/>
用户ID：<input name="userid" id="userid"/><br/>
用户姓名：<input name="username" id="username"/><br/>
<span id="span"></span>
<input type="button" value="OK" onclick="but()"/>
</body>
</html>
