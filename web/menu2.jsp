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
        <script type="text/javascript">
            function validate(theForm) {
                if (!document.getElementById('beer').checked && !document.getElementById('steak').checked
                        && !document.getElementById('pizza').checked && !document.getElementById('lobster').checked
                        && !document.getElementById('cheeseburger').checked && !document.getElementById('fishnchips').checked){
                    alert("Please make a selection");
                    return false;
                } else {
                    return true;
                }
            }
        </script>
        <style type="text/css">
            body{
                background-color: cyan;
            }
        </style>
    </head>
    <body>
        <form id="menu" name="menu" method="POST" action="DatabaseController" onsubmit="return validate(this)">
            <p>Select which items you would like to order.</p>
            <input type="checkbox" name="menuItem" value="1" id="beer">Beer<br>
            <input type="checkbox" name="menuItem" value="2" id="steak">Steak<br>
            <input type="checkbox" name="menuItem" value="3" id="pizza">Pizza<br>
            <input type="checkbox" name="menuItem" value="4" id="lobster">Lobster<br>
            <input type="checkbox" name="menuItem" value="5" id="cheeseburger">Cheeseburger<br>
            <input type="checkbox" name="menuItem" value="6" id="fishnchips">Fish & Chips<br>
            <br>
            <button type="submit" id="submit" value="Place Order" name="submit">Order</button>
        </form>
    </body>
</html>
