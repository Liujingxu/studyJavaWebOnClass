<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/4/1
  Time: 17:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试session</title>
    <style>
        p {
            color: red;
        }
    </style>
</head>
<body>

<%!
    String[] usernames = {"谢子豪", "刘源兴", "蔡忆华", "温旭东", "章富广", "宋潇波"};
    String[] userIds = {"1713010635", "1713010629", "1713010626", "1713010625", "1713010623"};
    String[] passwords = {"123", "456", "789", "147", "258", "369"};
%>

    <form action="login2.jsp" method="post">
        <label for="userId">账号：</label>
        <input id="userId" type="text" name="userId" />
        <label for="password">密码：</label>
        <input id="password" type="password" name="password" />
        <input type="submit" value="登陆" />
        <input type="reset" value="重置" />
    </form>

    <%
        request.setCharacterEncoding("utf-8");
        String userId = request.getParameter("userId");
        String password = request.getParameter("password");
        boolean isFind =false;
        if (!(userId == null || userId == "" || password == null || password == "")){
        for (int i = 0; i < userIds.length; i++){
            if (userId.equals(userIds[i]) && password.equals(passwords[i])){
                session.setAttribute("username", usernames[i]);
                isFind = true;
                break;
            }
        }
        if (isFind){
            response.sendRedirect("welcome.jsp");
        }else {
            %>
        <p>用户名或密码错误！</p>
            <%
        }
        }
    %>

</body>
</html>
