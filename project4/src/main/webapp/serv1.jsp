<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<%@ page import="servs.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name= request.getParameter("name");
int id = Integer.parseInt(request.getParameter("id"));
int price = Integer.parseInt(request.getParameter("price"));

Product p = new Product();
p.setId(id);
p.setName(name);
p.setPrice(price);

ProductDAO da = new ProductDAO(); 
int insert = da.insert(p);
if(insert>0)
{
	out.println("Inserted Successfully");
}
%>
<form action="retrieve.jsp" method="post">
<input type="submit" value="Get Product Details">
</form>
</body>
</html>