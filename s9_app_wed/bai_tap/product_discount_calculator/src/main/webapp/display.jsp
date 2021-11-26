<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 26/11/2021
  Time: 6:03 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    if (request.getAttribute("result") != null) {
%>

<h2>Lượng chiếc Khấu  <%=request.getAttribute("result")%></h2>
<h2> Giá sau khi chiếc khấu  <%=request.getAttribute("amountRate")%></h2>
<%
    }
%>
</body>
</html>
