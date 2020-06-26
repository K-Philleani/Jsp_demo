<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>登录成功页面</title>
</head>
<body>
    <%
        String name = request.getParameter("name").trim();
        String password = request.getParameter("password").trim();

        String URL = "jdbc:mysql://localhost:3306/DB2";
        String USER = "root";
        String PWD = "00000000";
        String SQL = "select name, password from uInfo where name='"+ name +"'";

        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(URL, USER, PWD);
        stmt = conn.createStatement();
        rs = stmt.executeQuery(SQL);

        List<String> userList = new ArrayList<String>();
        Boolean isUser = rs.next();

        if (!isUser) {
            out.print("<div>用户不存在,请检查是否账号有误：</div>" +
                    "请点击<a href=\"login.jsp\">重新登录</a>");
        } else {
            String isPassword = rs.getString("password");
            if (isPassword.equals(password)) {
                out.print(name + "登录成功");
                out.print("请点击<a href=\"login.jsp\">退出登录</a>");
            } else {
                out.print("<font color=red>" + name + "</font>密码错误！！！<br>"
                        + "请点击<a href=\"login.jsp\">重新登录</a>");
            }
        }
    %>
</body>
</html>
