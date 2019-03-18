<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/3/18
  Time: 21:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>成功</title>
</head>
<body>
    <%
        String username = request.getParameter("username");
    %>
    <h1>登陆成功</h1>
    <p>你好 <%=username%></p>
</body>
</html>
