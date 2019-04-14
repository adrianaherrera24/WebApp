<%-- 
    Document   : Alumno
    Created on : 07/04/2019, 01:35:24 PM
    Author     : Adriana Herrera
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="LogicaNegocio.Alumno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alumnos</title>
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <style>
            .navbar {
                background-color: lightseagreen;
            }
            
            h4{
                text-align: center;
                font-size: 50px;
                margin-top: 5px;
            }
            
            .boton1{
                background-color: lightblue;
            }
            
            .boton2{
                background-color: lightcoral;
            }
            
        </style>
    </head>
    <body>
        <nav class="navbar">
            <p class="navbar-brand"><h4>Módulo Alumnos</h4></p>
        </nav>
        
        <div class="container">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Teléfono</th>
                        <th scope="col">Email</th>
                        <th scope="col">Fecha Nacimiento</th>
                        <th scope="col">Carrera</th>
                        <th scope="col">Acciones</th>
                    </tr>
                </thead>
                
                <tbody>
                <%
                    ArrayList<Alumno> list =(ArrayList<Alumno>)request.getAttribute("alumno"); 
                    for(Alumno a : list) {
                %>
                    <tr class="info">
                        <td><%=a.getId()%></td>
                        <td><%=a.getNombre()%></td>
                        <td><%=a.getTelefono()%></td>
                        <td><%=a.getEmail()%></td>
                        <td><%=a.getFechaNacimiento() %></td>
                        <td><%=a.getCarrera()%></td>
                        <td><a type="button" class="btn boton1">Editar</a>&nbsp;<button class="btn boton2">Eliminar</button></td>
                    </tr>
                <%
                   }
                %>
                </tbody> 
            </table>
        </div>
     
        
        <!-- MODAL -->
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
            Insertar Alumnos
        </button>

        <!-- Modal -->
        <form action="alumno" method="POST">
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><b>Ingresar Alumno</b></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <div class="container">

                    <div class="form-group">
                      <label for="aCedula">Cédula</label>
                      <input type="text" class="form-control" id="aCedula" placeholder="Cédula" name="cedula">
                    </div>
                    <div class="form-group">
                      <label for="aNombre">Nombre</label>
                      <input type="text" class="form-control" id="aNombre" placeholder="Nombre" name="nombre">
                    </div>
                    <div class="form-group">
                      <label for="aTelefono">Teléfono</label>
                      <input type="text" class="form-control" id="aTelefono" placeholder="Teléfono" name="telefono">
                    </div>
                    <div class="form-group">
                      <label for="aEmail">E-mail</label>
                      <input type="email" class="form-control" id="aEmail" placeholder="name@example.com" name="email">
                    </div>
                    <div class="form-group">
                      <label for="aFecha">Fecha de Nacimiento</label>
                      <input type="date" class="form-control" id="aFecha" name="fecha">
                    </div>
                    <div class="form-group">
                      <label for="aCarrera">Carrera</label>
                        <select class="form-control" id="aCarrera" name="carrera">
                          <option>EIF</option>
                          <option>ADM</option>
                          <option>RRI</option>
                        </select>
                    </div>  
                    </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                    <button type="submit" class="btn btn-primary">Guardar</button>
                  </div>
                </div>
              </div>
            </div>
        </form>
    </body>
</html>
