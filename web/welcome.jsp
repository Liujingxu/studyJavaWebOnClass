<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/4/1
  Time: 17:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
</head>
<body>
    <%
        String username = (String) session.getAttribute("username");
        if (username == null) {
            username = "游客12138";
    %>
    <h1>欢迎<%=username%></h1>
    <p>如要体验更多功能，请先<a href="login2.jsp">登陆</a></p>
    <%
        }else {
            %>
        <h1>欢迎<%=username%><sub>id:<%=session.getId()%></sub></h1>
        <p>如果你想退出登陆就点<a href="loginOut.jsp">注销</a></p>
    <%
        }
    %>

</body>
</html>
