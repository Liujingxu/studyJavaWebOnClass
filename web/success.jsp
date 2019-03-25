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
    <form action="index.jsp" method="post">
        <fieldset>
            <legend>请完善个人信息</legend>
            真实姓名:
            <input type="text" name="trueName" /><br />
            <input type="radio" name="gender" value="男" />男
            <input type="radio" name="gender" value="女" />女<br/>
            <input type="checkbox" name="like" value="前端工程师" />前端工程师
            <input type="checkbox" name="like" value="后端工程师" />后端工程师
            <input type="checkbox" name="like" value="数据分析师" />数据分析师
            <input type="checkbox" name="like" value="算法工程师" />算法工程师
            <input type="checkbox" name="like" value="架构师" />架构师<br/>
            <button type="submit">提交</button>
        </fieldset>
    </form>
</body>
</html>
