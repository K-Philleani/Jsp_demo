<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>密码验证</title>
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
    } else {
%>
    <jsp:forward page="registeredSucceed.jsp">
<%

    }
%>
</body>
</html>
