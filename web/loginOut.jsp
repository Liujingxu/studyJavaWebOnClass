<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/4/1
  Time: 19:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <%
        session.invalidate();
        response.sendRedirect("login2.jsp");
    %>

</body>
</html>
