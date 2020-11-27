<%--
  Created by IntelliJ IDEA.
  User: STRIDE
  Date: 2020/11/25
  Time: 22:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <script>
        function but(){
            var xhr = new XMLHttpRequest();
            xhr.open("get", "multiple.do")
            xhr.send();
            xhr.onreadystatechange = function (){
                if(xhr.readyState ==4 && xhr.status == 200){

                    //通过JavaScript的内置对象的Json中的Parse函数将JSON格式的字符串转换为JavaScript对象

                    alert(xhr.responseText);
                    var obj1 = JSON.parse(xhr.responseText);
                    var temp="";
                    for (i=0; i<obj1.length; i++){
                        alert(obj1[i].userid+" "+obj1[i].username);
                        temp += obj1[i].userid+" "+obj1[i].username+"<br/>";
                    }
                    document.getElementById("span").innerHTML = temp;
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
