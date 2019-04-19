<%@ page import="java.sql.*" %>
<%@ page import="com.nuc.studyJavaWeb.entity.Car" %><%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/4/15
  Time: 23:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%!
    private Car car  = null;
%>

    <%
        String url = "jdbc:mysql://localhost/javaweb?serverTimezone=GMT%2B8";
        String user = "root";
        String password = "123456";
        Class.forName("com.mysql.cj.jdbc.Driver");      // 注册
        Connection connection = DriverManager.getConnection(url, user, password);       // 获取连接

        String id = "0 or 1 = 1";

        String sql = "select * from study_table_car where id = ?";          // sql 语句
        PreparedStatement ps = connection.prepareStatement(sql);            // 获得那个什么东西
        ps.setInt(1, 101);                                                  // 传一个参
        try {
            ResultSet resultSet = ps.executeQuery();
            if (resultSet.next()) {
                 car = new Car(resultSet.getInt(1), resultSet.getString(2), resultSet.getFloat(3));         // 封装对象
                System.out.println(car);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    %>

<ul>
    <li><%=car.getId()%></li>
    <li><%=car.getName()%></li>
    <li><%=car.getPrice()%></li>
</ul>

</body>
</html>
