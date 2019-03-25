<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/3/25
  Time: 17:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>计算器</title>
</head>
<body>

    <h1>这是一个计算器</h1>

    <form action="cal.jsp" method="post">
        <input type="text" name="num1"/>
        <select name="op">
            <option value="+">+</option>
            <option value="-">-</option>
            <option value="X">X</option>
            <option value="/">/</option>
        </select>
        <input type="text" name="num2"/>
        <button type="submit">计算</button>
    </form>

</body>
</html>
