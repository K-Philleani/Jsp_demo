<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录页面</title>
</head>
<body>
    <div align="center">
        <h2>用户登录</h2>
        <form action="loginSucceed.jsp" method="post">
            <table>
                <tr>
                    <td>用户名：</td>
                    <td>
                        <input type="text" name="name">
                    </td>
                </tr>
                <tr>
                    <td>密码：</td>
                    <td>
                        <input type="password" name="password">
                    </td>
                </tr>

            </table>
            <div>
                <input type="submit" value="登录">
                <input type="reset" value="重置">
            </div>
        </form>
        <div>
            <a href="register.jsp">去注册</a>
        </div>
    </div>
</body>
</html>
