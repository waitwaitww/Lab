<%@ page import="entity.post" %>
<%@ page import="java.util.List" %>
<%@ page import="entity.book" %><%--
  Created by IntelliJ IDEA.
  User: 杨
  Date: 2022/3/19
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test</title>
</head>
<body>
holle
<%
    book book = (book)request.getAttribute("book");
    List<post> posts = (List<post>)request.getAttribute("posts");
%>


</body>
</html>
