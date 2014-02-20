<%-- 
    Document   : index
    Created on : Sep 11, 2013, 8:46:16 PM
    Author     : ncummins
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type="text/css">
            body{
                background-color: cyan;
            }
            h1{
                font-family: "Times New Roman";
            }
        </style>
    </head>
    <body>
        <h1>Welcome to the Restaurant Simulator!</h1>
        <a href="admin.jsp">Click here to edit the menu</a>
        <p>Click the image to see the menu</p>
        <a href="DatabaseController?action=getMenu"><img src="restaurant.jpg" height="50%" width="50%"/></a>
            <%--
                need to call the database controller and then have the controller forward to the menu
            --%>
    </body>
</html>
