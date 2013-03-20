<%-- 
    Document   : UusiKayttaja
    Created on : Mar 19, 2013, 9:02:10 AM
    Author     : sikuutti
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="UusiKayttaja" method="post">
            <table>
                <tr><td>Nimi</td><td><input type="text" name="Nimi" /></td></tr>
                <tr><td>Käyttäjätunnus</td><td><input type="text" name="KayttajaTunnus" /></td></tr>
                <tr><td>Salasana</td><td><input type="password" name="SalaSana" /></td></tr>
                <tr><td>Osoite</td><td><input type="text" name="Osoite" /></td></tr>
                <tr><td>Kaupunki</td><td><input type="text" name="Kaupunki" /></td></tr>
                <tr><td>Postinumero</td><td><input type="text" name="Postinumero" /></td></tr>
                <tr><td>Alkupaino</td><td><input type="text" name="Paino" /></td></tr>
                <tr><td>Ikä</td><td><input type="text" name="Ikä" /></td></tr>
                

                    <td></td>
                    <td><input type="submit" value="submit"></td>
                </tr>
            </table>    

        </form>
        <p><c:out value="${param.viesti}"/></p>
    </body>
</html>
