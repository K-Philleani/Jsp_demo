<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>��¼�ɹ�ҳ��</title>
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
            out.print("<div>�û�������,�����Ƿ��˺�����</div>" +
                    "����<a href=\"login.jsp\">���µ�¼</a>");
        } else {
            String isPassword = rs.getString("password");
            if (isPassword.equals(password)) {
                out.print(name + "��¼�ɹ�");
                out.print("����<a href=\"login.jsp\">�˳���¼</a>");
            } else {
                out.print("<font color=red>" + name + "</font>������󣡣���<br>"
                        + "����<a href=\"login.jsp\">���µ�¼</a>");
            }
        }
    %>
</body>
</html>
