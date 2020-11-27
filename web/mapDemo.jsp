<%--
  Created by IntelliJ IDEA.
  User: STRIDE
  Date: 2020/11/25
  Time: 23:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <script>
        function but(){
            var xhr = new XMLHttpRequest();
            xhr.open("get", "map.do")
            xhr.send();
            xhr.onreadystatechange = function (){
                if(xhr.readyState ==4 && xhr.status == 200){
                    /**
                     * 通过JavaScript的内置对象的Json中的Parse函数将JSON格式的字符串转换为JavaScript对象
                     */
                    alert(xhr.responseText);
                    var obj = JSON.parse(xhr.responseText);
                    alert(obj.userid+" "+obj.url);
                    document.getElementById("span").innerHTML = obj.userid+"<br/>"+obj.url;
                }
            }
        }
    </script>
</head>
<body>
<H3>北京上学糖</H3>
<hr/>
<span id="span"></span>
<input type="button" value="Ok" onclick="but()">
</body>
</html>
