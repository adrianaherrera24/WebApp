<%-- 
    Document   : Alumno
    Created on : 07/04/2019, 01:35:24 PM
    Author     : Adriana Herrera
--%>

<%@page import="java.util.List"%>
<%@page import="LogicaNegocio.Alumno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alumnos</title>
    </head>
    <body>
        <%
            request.getSession(false);
            List<Alumno> alumno = (List<Alumno>)request.getAttribute("alumnos");
            
        %>
        <h1>Soy el alumno!</h1>
        <p><%=(alumno.get(1).getNombre())%></p>
    </body>
</html>
