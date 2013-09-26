<%-- 
    Document   : receipt2
    Created on : Sep 25, 2013, 6:50:39 PM
    Author     : ncummins
--%>

<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.*, model.Item"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Confirmation</title>
    </head>
    <body>
        <h2>Thank you! Your meal order has been placed.</h2>
        <p>You ordered the following:</p>
        <ul>
            <%
                double total = 0;
                double tip = 0;
                NumberFormat nf = NumberFormat.getCurrencyInstance();
                Object objOrderList = request.getAttribute("orderList");
                if(objOrderList != null) {
                    List<Item> orderList = (List<Item>)objOrderList;
                    for(Item item : orderList) {
                        out.println("<li>" + item.getName() + ", " + nf.format(item.getPrice()) + "</li>");
                        total += item.getPrice();
                    }
                    out.println("<br/><br/>");
                    out.println("Subtotal: " + nf.format(total) + "<br/>");
                    out.println("WI Tax: " + (nf.format(total * .05)) + "<br/>");
                    out.println("Total Bill: " + (nf.format(total * 1.05)) + "<br/>");
                    out.println("Suggested Gratuity: " + (nf.format(total * 1.05 * 0.15)) + "<br/>");
                } else {
                    out.print("Sorry, your order could not be found. Please contact your waiter/waitress");
                }
            %>
            <p><a href="index.jsp">Start Over</a></p>
            
        </ul>
    </body>
</html>
