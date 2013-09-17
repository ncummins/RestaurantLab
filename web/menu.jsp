<%-- 
    Document   : menu
    Created on : Sep 11, 2013, 8:48:04 PM
    Author     : ncummins
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <form id="menu" name="menu" method="POST" action="RestaurantController" onsubmit="return validate(this)">
            <p>Select which items you would like to order.</p>
            <input type="checkbox" name="menuItem" value="Beer" id="beer">Beer<br>
            <input type="checkbox" name="menuItem" value="Steak" id="steak">Steak<br>
            <input type="checkbox" name="menuItem" value="Pizza" id="pizza">Pizza<br>
            <input type="checkbox" name="menuItem" value="Lobster" id="lobster">Lobster<br>
            <input type="checkbox" name="menuItem" value="Cheeseburger" id="cheeseburger">Cheeseburger<br>
            <input type="checkbox" name="menuItem" value="Fishnchips" id="fishnchips">Fish & Chips<br>
            <br>
            <button type="submit" id="submit" name="submit">Order</button>
        </form>
    </body>
</html>
