<%-- 
    Document   : receipt
    Created on : Sep 11, 2013, 8:59:40 PM
    Author     : ncummins
--%>

<%@page import="java.text.NumberFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Receipt</title>
        <style type="text/css">
            body{
                background-color: cyan;
            }
        </style>
    </head>
    <body>
        You ordered the following items:
        <%
            if (request.getAttribute("menuItems") != null) {
                    out.print(request.getAttribute("menuItems"));
            }
            
        %>
        <table>
            <tr>
                <td>Your tax is:</td>
                <td>
                    <%
                        NumberFormat nf = NumberFormat.getCurrencyInstance();

                        double tax = (Double) request.getAttribute("tax");
                        out.print(nf.format(tax));
                    %>
                </td>
            </tr>
            <tr>
                <td>Your tip is:</td>
                <td>
                    <%
                        double tip = (Double) request.getAttribute("tip");
                        out.print(nf.format(tip));
                    %>
                </td>
            </tr>
            <tr>
                <td>Your total is:</td>
                <td>
                    <%
                        double total = (Double) request.getAttribute("total");
                        out.print(nf.format(total));
                    %>
                </td>
            </tr>
        </table>
        <p><a href="index.jsp">Back to home</p>
    </body>
</html>
