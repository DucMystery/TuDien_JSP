<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 6/2/2020
  Time: 3:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Map<String, String> dic = new HashMap<>();
%>
<%
    dic.put("hello","Xin chào");
    dic.put("now","Bây giờ");
    dic.put("cat","Mèo");
    dic.put("dog","Chó");
    dic.put("horse","Ngựa");

    String search = request.getParameter("search");

    String result = dic.get(search);

    if (result != null){
        out.println("Word : "+search+"<br/>");
        out.println("Result : "+result);
    }else {
        out.println("Not found");
    }
%>
</body>
</html>
