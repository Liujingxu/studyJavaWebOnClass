<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/3/18
  Time: 21:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <%!
        String[] usernames = {"刘晶旭", "刘面皮", "武鹏伟", "赵宸", "赵昂", "曹琮皓"};
        String[] userIds = {"1713010613", "1713010617", "1713010616", "1713010618", "1713010615", "1713010612"};
        String[] passwords = {"123", "456", "789", "147", "159", "357"};
    %>

    <%
        String userId = request.getParameter("userId");
        String password = request.getParameter("password");
        int i;
        for (i = 0; i < userIds.length; i++){
            if (userId.equals(userIds[i]))
                break;
        }

        request.setCharacterEncoding("utf-8");
        
        if (i < userIds.length){
            if (passwords[i].equals(password)){
                %>
            <jsp:forward page="success.jsp">
                <jsp:param name="username" value="<%= usernames[i]%>" />
            </jsp:forward>
    <%
                
            }
            }
        %>
        <jsp:forward page="login_fail.jsp" />
</body>
</html>
