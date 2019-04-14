<%-- 
    Document   : Carrera
    Created on : 07/04/2019, 01:36:44 PM
    Author     : Adriana Herrera
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="LogicaNegocio.Carrera"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carreras</title>
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
            <p class="navbar-brand"><h4>Módulo Carreras</h4></p>
        </nav>
        
        <div class="container">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Código</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Título</th>
                        <th scope="col">Acciones</th>
                    </tr>
                </thead>
                
                <tbody>
                <%
                    ArrayList<Carrera> list =(ArrayList<Carrera>)request.getAttribute("carrera"); 
                    for(Carrera a : list) {           
                %>
                    <tr class="info">
                        <td><%=a.getId()%></td>
                        <td><%=a.getNombre()%></td>
                        <td><%=a.getTitulo() %></td>
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
          Ingresar Carrera
        </button>
       
        <form action="carrera" method="POST">
            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><b>Ingresar Carrera</b></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <div class="container">

                <div class="form-group">
                  <label for="aCodigo">Código</label>
                  <input type="text" class="form-control" placeholder="Código" name="codigo">
                </div>
                <div class="form-group">
                  <label for="aNombre">Nombre</label>
                  <input type="text" class="form-control" placeholder="Nombre" name="nombre">
                </div>
                <div class="form-group">
                  <label for="aTitulo">Título</label>
                  <input type="text" class="form-control" placeholder="Título" name="titulo">
                </div>
                <div class="form-group">
                    <button type="button" class="btn btn-success" name="aEditar" >Editar Cursos</button>
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
