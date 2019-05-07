<%@ page import="com.nuc.studyJavaWeb.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/5/7
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人信息</title>
</head>
<body>

    <%
        User user = (User) request.getAttribute("user");
        System.out.println(user);
    %>

    ID：<%=user.getId()%><br>
    用户名：<%=user.getUsername()%><br>
    密码：<%=user.getPassword()%><br>
    邮箱：<%=user.getEmail()%><br>
    年龄：<%=user.getAge()%><br>
    地址：<%=user.getAddress()%><br>

    <a href="index.jsp">点击重新登录</a>

</body>
</html>
