<%-- 
    Document   : Profesor
    Created on : 09/04/2019, 11:34:28 AM
    Author     : Adriana Herrera
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="LogicaNegocio.Profesor"%>
<%@page import="LogicaNegocio.Profesor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profesor</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
            <p class="navbar-brand"><h4>Módulo Profesores</h4></p>
        </nav>
        
        <div class="container">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Teléfono</th>
                        <th scope="col">Email</th>
                        <th scope="col">Acciones</th>
                    </tr>
                </thead>
                
                <tbody>
                <%
                    ArrayList<Profesor> list =(ArrayList<Profesor>)request.getAttribute("profesor"); 
                    for(Profesor a : list) { 
                %>
                    <tr class="info">
                       <td><%=a.getId()%></td>
                       <td><%=a.getNombre()%></td>
                       <td><%=a.getTelefono()%></td>
                       <td><%=a.getEmail()%></td>
                       <td><button class="btn boton1">Editar</button>&nbsp;<button class="btn boton2">Eliminar</button></td>
                     </tr>
                <%
                   }
                %>
                </tbody>
            </table>
        </div>
         
        
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
          Ingresar Profesor
        </button>

        <form action="profesor" method="POST">
            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel" style><b>Ingresar Profesor</b></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <div class="container">

                        <div class="form-group">
                          <label for="aCedula">Cédula</label>
                          <input type="text" class="form-control" placeholder="Cédula" name="cedula">
                        </div>
                        <div class="form-group">
                          <label for="aNombre">Nombre</label>
                          <input type="text" class="form-control" placeholder="Nombre" name="nombre">
                        </div>
                        <div class="form-group">
                          <label for="aTelefono">Teléfono</label>
                          <input type="text" class="form-control" placeholder="Teléfono" name="telefono">
                        </div>
                        <div class="form-group">
                          <label for="aEmail">E-mail</label>
                          <input type="email" class="form-control" placeholder="name@example.com" name="email">
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
