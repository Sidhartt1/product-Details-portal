<%@page import="java.util.List"%>
<%@page import="servs.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
ProductDAO da = new ProductDAO();
List<Product> plist = da.retrieve();
%>
<table border=1>
<tr><th>ID</th><th>Name</th><th>Price</th></tr>
<%for(Product pp : plist) {%>
<tr><td><%=pp.getId()%></td><td><%=pp.getName()%></td><td><%=pp.getPrice()%></td></tr>
<%}%>
</table>
</body>
</html>