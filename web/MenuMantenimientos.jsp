<%-- 
    Document   : MenuMantenimientos
    Created on : 07/04/2019, 10:57:36 AM
    Author     : Adriana Herrera
--%>

<%@page import="java.util.List"%>
<%@page import="LogicaNegocio.Alumno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mantenimientos</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <style>
            .navbar {
                background-color: lightseagreen;
            }
            
            .navbar-brand {
                font-family: sans-serif;
                font-size: 25px;
            }
            
            .nav{
                background-color: lightseagreen;
            }
            a{
                font-family: sans-serif;
                text-decoration: none;
                color: black;
            }
            a:hover{
                background-color: lightskyblue;
            }
        </style>
    </head>
    <body>
        <form action="Mantenimientos" method="post">
        <nav class="navbar">
            <p class="navbar-brand">Mantenimientos</p>
        </nav>
        <!-- Items -->
        <nav class="nav nav-tabs">
            <li class="nav-item">
                <button type="submit" class="nav-link" name="Alumno">Alumnos</button>  
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Carrera.jsp">Carreras</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Curso.jsp">Cursos</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" href="Profesor.jsp">Profesores</a>
            </li>
        </nav>
       </form>
        <table class="table">
        <thead>
       
          <tr>
            <th scope="col">#</th>
            <th scope="col">X</th>
            <th scope="col">Y</th>
            <th scope="col">Z</th>
            <th scope="col">Actions</th>
          </tr>
        </thead>
        <tbody>
        <%
//            List<Alumno> alum = (List<Alumno>)request.getAttribute("alumno");
//            for(Alumno a : alum) { 
                
        %>
<!--          <tr class="info">
            <td><//%=a.getId()%></td>
            <td><//%=a.getNombre()%></td>
            <td><//%=a.getCarrera()%></td>
            <td><//%=a.getTelefono()   %></td>
            <td><a>accion</a></td>
          </tr>-->
         <%
           //}
         %>
        </tbody>
      </table>
    </body>
</html>
