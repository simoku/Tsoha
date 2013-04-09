<%-- 
    Document   : Selaus
    Created on : Mar 15, 2013, 2:09:04 PM
    Author     : sikuutti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Selaus</title>
    <form action="SelausServlet" methot="post">
        <table>
            <tr><td>Ika</td><td><input type="text" name="ika" value="${ika}"/></td></tr>
            <tr><td>Paino</td><td><input type="text" name="paino" value="${paino}"/></td></tr>

            <tr><td>Aika</td><td><input type="text" name="aika"value="${aika}" /></td></tr>
            <tr><td>Laji</td><td><select name="laji">

                        <c:forEach var="alkio" items="${lista}">
                            <option value="${alkio}">${alkio}</option>
                        </c:forEach>
                    </select></td></tr>



            <td></td>
            <td><input type="submit" value="submit"></td>
            </tr>
        </table>    

        <p><c:out value="${viesti}"/></p>





    </head>
    <body>






        </html>
