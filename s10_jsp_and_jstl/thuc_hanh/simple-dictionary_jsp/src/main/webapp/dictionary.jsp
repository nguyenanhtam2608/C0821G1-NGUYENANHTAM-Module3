<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
Created by IntelliJ IDEA.
  User: nguye
  Date: 28/11/2021
  Time: 9:26 CH
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%!
    Map<String, String> dic = new HashMap<>();
%>

<%
    dic.put("hello", "Xin chào");
    dic.put("how", "Thế nào");
    dic.put("book", "Quyển vở");
    dic.put("computer", "Máy tính");

    String search = request.getParameter("search");

    String result = dic.get(search);
    if (result != null) {
        out.println("Word: " + search);
        out.println("Result: " + result);
    } else {
        out.println("Not found");
    }
%>

</body>
</html>
