<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/3/25
  Time: 18:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>菜单</title>
</head>
<body>

    <h1>javaweb课堂小栗子</h1>

    <%
        request.setCharacterEncoding("utf-8");
        String[] likes = request.getParameterValues("like");
    %>

    <ul>
        <li><%=request.getParameter("trueName")%></li>
        <li><%=request.getParameter("gender")%></li>
        <li>
            <%
                for (int i = 0; i < likes.length;i++){
                    out.print("<em>" + likes[i] + "</em>　　");
                }
            %>
        </li>
    </ul>

    <ul>
        <li><a href="cacular.jsp">计算器</a></li>
        <li><a href="testCharset.jsp?param=测试">测试get请求的中文乱码问题</a></li>
        <li><a href="login2.jsp">测试session</a> </li>
        <li><a href="testApplication.jsp">测试访问人数</a></li>
    </ul>

</body>
</html>
