<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新用户注册</title>
</head>
<body>
    <div>
        <h2 align="center">新用户注册</h2>
        <form action="registeredSucceed.jsp" method="post">
            <table align="center">
                <tr>
                    <td>请输入用户名：</td>
                    <td>
                        <input type="text" name="name" autofocus="autofocus">
                    </td>
                </tr>
                <tr>
                    <td>请输入密码：</td>
                    <td>
                        <input type="password" name="password">
                    </td>
                </tr>
                <tr>
                    <td>请确认密码：</td>
                    <td>
                        <input type="password" name="rePassword">
                    </td>
                </tr>
            </table>
            <div align="center">
                <input type="submit" value="注册">
                <input type="reset" value="重置">
            </div>
        </form>
    </div>
</body>
</html>
