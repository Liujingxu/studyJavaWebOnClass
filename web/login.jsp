<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/3/18
  Time: 21:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>第一个案例</title>
    <script>
       window.onload  = function () {

           var button = document.getElementsByTagName('button')[0];
           button.onclick = function () {
               var userId = document.getElementsByTagName('input');

               if (!/^\d+$/.test(userId[0].value)){
                   alert('用户名全是数字，孩子');
                    userId[0].focus();
                    userId[0].value = userId[1].value = '';
                   return false;
               }


           }

        }
    </script>
</head>
<body>
<h1>这是第一个javaweb小demo</h1>

<form action="check.jsp" method="post">
    <table>
        <thead>
        <tr>
            <th>登陆小系统</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>用户名</td>
            <td><input type="text" name="userId"/></td>
        </tr>
        <tr>
            <td>密码</td>
            <td><input type="password" name="password"/></td>
        </tr>
        <tr>
            <td><button type="submit">提交</button><input type="reset" value="重置" /></td>
        </tr>
        </tbody>
    </table>
</form>

</body>
</html>
