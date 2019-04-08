<%@ page import="com.nuc.studyJavaWeb.entity.Register" %><%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/4/8
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="register" class="com.nuc.studyJavaWeb.entity.Register" scope="request" />
<jsp:setProperty name="register" property="*" />
<%
    if (register.check()){
        response.sendRedirect("success.jsp");
    }else {
        request.setAttribute("register", register);
        request.setAttribute("s", "s");
        %>
<jsp:forward page="index.jsp" >
    <jsp:param name="isFirst" value="true"/>
</jsp:forward>
<%
    }
%>

</body>
</html>
