<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>主页</title>
    <style>
      body {
        background: #f0f5f9;
      }
      .home {
        width: 400px;
        height: 500px;
        margin: 100px auto;
        text-align: center;
        background-image:url("./img/bg.jpeg") ;
        background-size:cover;
        background-repeat:no-repeat;
        position: relative;
      }
      a {
        text-decoration: none;
        color: orange;
      }
      .link {
        position: absolute;
        top: 270px;
        left: 140px;
      }
    </style>
  </head>
  <body>
      <div class="home">
        <div class="link">
          <a href="login.jsp">用户登录</a>
          <a href="register.jsp">注册用户</a>
        </div>
      </div>
  </body>
</html>
