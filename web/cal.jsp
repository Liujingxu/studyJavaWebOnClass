<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/3/25
  Time: 17:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>结果</title>
</head>
<body>

        <%
            String num1 = request.getParameter("num1");
            String op = request.getParameter("op");
            String num2 = request.getParameter("num2");
            int n1 = Integer.parseInt(num1);
            int n2 = Integer.parseInt(num2);
            int r = 0;
            int mod = 0;
            String result = "";
            boolean isTrue = false;
            try {
                switch (op) {
                    case "+": r = n1 + n2;break;
                    case "-": r = n1 - n2;break;
                    case "X": r = n1 * n2;break;
                    case "/": r = n1 / n2;mod = n1 % n2;break;
                }
                result = r + "";
            } catch (Exception e) {
                result = "结果不能为0";
                isTrue = true;
            }finally {

                if (op.equals("/") && !isTrue ){
                    result = result + " ...... " + mod;
                }

                request.setAttribute("result", result);
            }

        %>

        <jsp:forward page="result.jsp"/>
</body>
</html>
