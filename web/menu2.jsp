<%-- 
    Document   : menu2
    Created on : Sep 21, 2013, 8:10:53 AM
    Author     : Nolan 2
--%>

<%@page import="java.util.List"%>
<%@page import="model.Item"%>
<%@page import="java.text.NumberFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
	List<Item> menuList = (List<Item>) request.getAttribute("menuList");
	List<Item> orderList = (List<Item>) request.getAttribute("orderList");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Restaurant Menu</title>
        
        <style type="text/css">
            body{
                background-color: cyan;
            }
        </style>
    </head>
    <body>
		<h2 style="font-family: Arial,sans-serif">Place your order...</h2><font face="Arial" size="2"><br/>
                <span style="font-size: small;">(or click <a href="index.jsp">here</a> to return to home page)</span><br><br>
		<Form method="Post" action ="DatabaseController">
		<%
		    List<Item> menu = (List) request.getAttribute("menuList");
		    for (Item i:menu){%>	

			<input type="checkbox" id ="<%=i.getName()%>" name="<%= i.getName()%>" value ="test">
			<%= i.getName()  %>
			<br>		     
			<%}%>

		<input id ="submit" type ="Submit" value ="Place Order" name ="placeOrder">
	    </form>
		<br>
	</body>
</html>
