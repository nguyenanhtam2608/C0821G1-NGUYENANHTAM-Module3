<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 26/11/2021
  Time: 3:20 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<h1>Calculator</h1>
<form action="/count" method="post">
    <input type="text" name="usermane" id="name" placeholder="Mô tả của sản phẩm"><br><br>
    <input type="number" name="amount" placeholder=" Giá niêm yết của sản phẩm"><br><br>
    <input type="number" name="rate" placeholder="Tỷ lệ chiết khấu (phần trăm)"><br><br>
    <input type="submit" id="submit" value="Calculate Discount">
</form>

</body>
</html>
