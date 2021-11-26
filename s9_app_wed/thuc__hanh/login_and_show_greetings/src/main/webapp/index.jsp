<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 26/11/2021
  Time: 2:24 CH
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>
    <title>$Title$</title>
    <style type="text/css">
      .login {
        height:180px; width:230px;
        margin:0;
        padding:10px;
        border:1px #CCC solid;
      }
      .login input {
        padding:5px; margin:5px
      }
    </style>
  </head>
  <body>
  <form method="post" action="/login">
    <div class="login">
      <h2>Login</h2>
      <input type="text" name="username" size="20"  placeholder="username" />
      <input type="password" name="password" size="20" placeholder="password" />
      <input type="submit" value="Sign in"/>
    </div>
  </form>
  </body>
</html>
