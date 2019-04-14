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
            
            .nav-link{
                background-color: lightseagreen;
            }
            
            .nav-link:hover{
                background-color: deepskyblue;
            }
        </style>
    </head>
    <body>
        <form action="Mantenimientos" method="POST">
            <nav class="navbar">
                <p class="navbar-brand">Mantenimientos</p>
            </nav>
            
            <!-- Items -->
            <nav class="nav nav-tabs">
                <li class="nav-item">
                    <button type="submit" class="nav-link" name="Alumno">Alumnos</button>  
                </li>
                <li class="nav-item">
                    <button type="submit" class="nav-link" name="Carrera">Carreras</button>
                </li>
                <li class="nav-item">
                    <button type="submit" class="nav-link" name="Curso">Cursos</button>
                </li>
                <li class="nav-item">
                    <button type="submit" class="nav-link" name="Profesor">Profesores</button>
                </li>
            </nav>
       </form>
    </body>
</html>
