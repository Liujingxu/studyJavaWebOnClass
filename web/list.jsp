<%@ page import="java.util.List" %>
<%@ page import="com.nuc.studyJavaWeb.entity.User" %>
<%@ page import="java.util.Iterator" %><%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/5/7
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>所有会员</title>
</head>
<body>
    <%
        List<User> users = (List<User>) request.getAttribute("users");
        Iterator<User> iterator = users.iterator();
    %>
    <table>
        <tr>
            <th>username</th>
            <th>email</th>
            <th>age</th>
            <th>address</th>
        </tr>
        <%
            while (iterator.hasNext()){
                User user = iterator.next();
                %>
            <tr>
                <td><%=user.getUsername()%></td>
                <td><%=user.getEmail()%></td>
                <td><%=user.getAge()%></td>
                <td><%=user.getAddress()%></td>
            </tr>
        <%
            }
        %>
    </table>
    <a href="insert.html">邀请新会员</a>
</body>
</html>
