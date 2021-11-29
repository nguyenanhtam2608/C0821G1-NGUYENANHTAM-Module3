<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 29/11/2021
  Time: 2:24 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<h2> Calculator</h2>
<form action="/calculator_servlet" method="post">
    <input type="number" name="numberOne" placeholder="Nhập số thứ nhất"> <br><br>
    <select name="operator"> <br><br>
        <option value="sum" name="sum">Sum</option>
        <option value="sub" name="sub">sub</option>
        <option value="core" name="core">core</option>
        <option value="div" name="div">div</option>
    </select> <br><br>
    <input type="number" name="numberTwo" placeholder="Nhập số thứ hai">
    <br><br>
    <input type="submit" value="Submit">


</form>
</body>
</html>
