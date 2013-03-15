<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1256"> 
        <title>Sisäänkirjaantuminen</title>
    </head> 
    <body> 
        
        Anna käyttäjätiedot. Jos haluat vain selata tietoja, jätä kentät tyhjiksi
        <form action="LoginServlet1" methot="post"> 
            Käyttäjätunnus<input type="text" name="user"/><br> 
            Salasana <input type="password" name="pw"/> 
            <input type="submit" value="submit"> </form> 
    <c:out value="${param.viesti}"/>
    
    </body> 
</html>