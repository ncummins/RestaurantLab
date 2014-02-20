<%-- 
    Document   : admin
    Created on : Sep 29, 2013, 1:10:33 PM
    Author     : Nolan 2
--%>

<%@page import="model.Item"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Editor</title>

    </head>
    <body>

        <div>
            <h1>Menu Editor</h1>

            <%
            List<Item> menu = (List) request.getAttribute("items");
            for (Item i : menu) {%>	
            <Form method="Post" action="AdminController">
                <input type="hidden" id ="ItemID" name="<%= "ItemID"%>" value ="<%= i.getId()%>">
                <input type ="text" value ="<%= i.getName()%>" name ="Name">
                <input type ="text" value ="<%= i.getPrice()%>" name = "Price">
                <input type="Submit" id ="<%=i.getName()%>" name="Delete" value ="Delete">
                <input type ="Submit" value ="Update" name ="Update">
            </form>

            <br>
            <%}%>

            <Form method="Post" action="AdminController">
                Name: <input id ="Name" type ="text" value ="" name ="Name">
                Price: <input id ="Price" type ="text" value ="" name ="Price">
                <input type ="Submit" name="Add" value ="Add">
                <Form method="Post" action ="AdminController">

        </div>
    </body>
</html>
