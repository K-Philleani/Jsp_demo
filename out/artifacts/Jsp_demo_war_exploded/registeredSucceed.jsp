<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册成功页面</title>
</head>
<body>

    <%
        // trim()用于去除首位的空格
        String name = request.getParameter("name").trim();
        String password = request.getParameter("password").trim();
        String rePassword = request.getParameter("rePassword").trim();

        // 对两次输入的密码进行对比
        if (!password.equals(rePassword)) {
            out.print("<div> Hi:"+name+" 您两次输入的密码不一致</div> <br>" +
                "请点击<a href=\"register.jsp\">去注册</a>"
            );
            return;
        }

        String URL = "jdbc:mysql://localhost:3306/DB2";
        String USER = "root";
        String PWD = "00000000";
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        String SQL = "insert into uInfo values(null, '"+name+"', '"+password+"')";
        String SQlFind = "select * from uInfo";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(URL, USER, PWD);
            stmt = conn.createStatement();

            rs = stmt.executeQuery(SQlFind);
            List<String> nameList = new ArrayList<>();
            while (rs.next()) {
                String findName = rs.getString("name");
                nameList.add(findName);
            }
            for (String it : nameList) {
                System.out.println(it);
                if (it.equals(name)) {
                    out.print("<div>用户已经存在</div>" +
                            "请点击<a href=\"register.jsp\">重新注册</a>");
                    return;
                }
            }
            int count = stmt.executeUpdate(SQL);
            if (count > 0) {
                out.print("用户： <h1> " + name + "</h1>注册成功！<br>"
                        + "请点击<a href=\"index.jsp\">请去登录</a>");
            }

        } catch(Exception ex) {
            ex.printStackTrace();
        }


    %>
</body>
</html>
