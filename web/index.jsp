<%@ page import="com.nuc.studyJavaWeb.entity.Register" %><%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/4/8
  Time: 16:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
</head>
<body>
<jsp:useBean id="register" class="com.nuc.studyJavaWeb.entity.Register" scope="request"/>

<form action="check.jsp" method="post">
    <label>用户名：</label>
    <input type="text" name="name" value="<jsp:getProperty name="register" property="name"/>" />
    <em style="color: red"><%=register.showErrorMessage("name")%><%=register.showErrorMessage("nullName")%>
    </em>
    <br/>
    <label>年龄：</label>
    <input type="text" name="age" value="<jsp:getProperty name="register" property="age" />" />
    <em style="color: red"><%=register.showErrorMessage("age")%><%=register.showErrorMessage("nullAge")%>
    </em>
    <br/>
    <label>E-mail：</label>
    <input type="text" name="email" value="<jsp:getProperty name="register" property="email"/>" />
    <em style="color: red"><%=register.showErrorMessage("email")%><%=register.showErrorMessage("nullEmail")%>
    </em>
    <br/>
    <input type="submit" value="提交" />
</form>

</body>
</html>
