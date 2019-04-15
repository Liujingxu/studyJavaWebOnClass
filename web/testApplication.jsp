<%@ page import="java.math.BigInteger" %>
<%@ page import="java.util.Scanner" %>
<%@ page import="java.io.*" %><%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/4/1
  Time: 19:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    BigInteger count = null;

    public void save(File file, BigInteger count) {
        PrintStream ps = null;

        try {
            ps = new PrintStream(new FileOutputStream(file));
            ps.println(count);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } finally {
            ps.close();
        }

    }

    public BigInteger load (File file) {
        if (file.exists()){
            Scanner scanner = null;
            try {
                scanner = new Scanner(new FileInputStream(file));
                if (scanner.hasNext()){
                    count = new BigInteger(scanner.next());
                    }
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } finally {
                scanner.close();
            }
        }else {
            count = new BigInteger("1");
            save(file, count);
        }
        return count;
    }
%>


<%
    String fileName = application.getRealPath("/") + "count.txt";
    File file = new File(fileName);
    if (session.isNew()){
        synchronized (this){
            count = load(file);
            count = count.add(new BigInteger("1"));
            save(file, count);
        }
    }else {
        file.delete();
    }
%>

<h1>您是今天第<%=count == null ? 1: count%>个浏览用户</h1>
</body>
</html>
