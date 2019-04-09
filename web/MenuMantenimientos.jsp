<%-- 
    Document   : MenuMantenimientos
    Created on : 07/04/2019, 10:57:36 AM
    Author     : Adriana Herrera
--%>

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
        <nav class="navbar">
            <p class="navbar-brand">Mantenimientos</p>
        </nav>
        <!-- Items -->
        <nav class="nav nav-tabs">
            <li class="nav-item">
               <a class="nav-link" href="Alumno.jsp">Alumnos</a> 
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
          <tr>
            <th scope="row">1</th>
            <td>Mark</td>
            <td>Otto</td>
            <td>Thornton</td>
            <td><a>Editar</a></td>
          </tr>
          <tr>
            <th scope="row">2</th>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>Thornton</td>
            <td><a>Editar</a></td>
          </tr>
          <tr>
            <th scope="row">3</th>
            <td>Mark</td>
            <td>Otto</td>
            <td>Thornton</td>
            <td><a>Editar</a></td>
          </tr>
          <tr>
            <th scope="row">4</th>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>Thornton</td>
            <td><a class="otra">Editar</a></td>
          </tr>
        </tbody>
      </table>
    </body>
</html>
