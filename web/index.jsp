<%--
  Created by IntelliJ IDEA.
  User: STRIDE
  Date: 2020/11/25
  Time: 18:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <script>
      function but(){
        var xhr = new XMLHttpRequest();
        xhr.open("get", "ajax.do")
        xhr.send();
        xhr.onreadystatechange = function (){
          if(xhr.readyState ==4 && xhr.status == 500){
            document.getElementById("span").innerHTML = xhr.responseText;
            alert(xhr.responseText);
          }
        }
      }
    </script>
  </head>
  <body>
  <H3>北京上学糖</H3>
  <hr/>
  <span></span>
  <input type="button" value="Ok" onclick="but()">
  </body>
</html>
