<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/3/25
  Time: 18:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试charset</title>
</head>
<body>

    <p>改正前：<%=request.getParameter("param")%></p>
    <%
        String str = new String(request.getParameter("param").getBytes("ISO-8859-1"), "utf-8");
    %>
    <p>改正后：<%=str%></p>

</body>
</html>
