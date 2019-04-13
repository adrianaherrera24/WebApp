<%-- 
    Document   : Curso
    Created on : 09/04/2019, 11:24:07 AM
    Author     : Adriana Herrera
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="LogicaNegocio.Curso"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cursos</title>
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
        </style>
    </head>
    <body>
        <nav class="navbar">
            <p class="navbar-brand"><h4>Módulo Cursos</h4></p>
        </nav>
        
        <div class="container">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Código</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Créditos</th>
                        <th scope="col">Horas Semanales</th>
                        <th scope="col">Carrera</th>
                        <th scope="col">Ciclo</th>
                        <th scope="col">Año</th>
                        <th scope="col">Acciones</th>
                    </tr>
                </thead>
                
                <tbody>
                <%
                    ArrayList<Curso> list =(ArrayList<Curso>)request.getAttribute("curso"); 
                    for(Curso a : list) {            
                %>
                    <tr class="info">
                        <td><%=a.getId()%></td>
                        <td><%=a.getNombre()%></td>
                        <td><%=a.getCreditos() %></td>
                        <td><%=a.getHorasSemanales() %></td>
                        <td><%=a.getCarrera() %></td>
                        <td><%=a.getCiclo() %></td>
                        <td><%=a.getAnno() %></td>
                        <td><a>accion</a></td>
                    </tr>
                <%
                   }
                %>
                </tbody>
            </table>
        </div>
        
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
          Ingresar Curso
        </button>
        
        <form action="Curso" method="POST">
        <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><b>Ingresar Curso</b></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <div class="container">

                        <div class="form-group">
                          <label for="aCodigo">Código</label>
                          <input type="text" class="form-control" id="aCodigo" placeholder="Código">
                        </div>
                        <div class="form-group">
                          <label for="aNombre">Nombre</label>
                          <input type="text" class="form-control" id="aNombre" placeholder="Nombre">
                        </div>
                        <div class="form-group">
                          <label for="aCreditos">Créditos</label>
                          <input type="text" class="form-control" id="aCreditos" placeholder="Créditos">
                        </div>

                        <div class="form-group">
                          <label for="aHoras">Horas Semanales</label>
                          <input type="text" class="form-control" id="aHoras" placeholder="Horas">
                        </div>

                        <div class="form-group">
                          <label for="aCarrera">Carrera</label>
                            <select class="form-control" id="aCarrera">
                              <option>EIF</option>
                              <option>ADM</option>
                              <option>RRI</option>
                            </select>
                        </div>

                        <div class="form-group">
                          <label for="aCiclo">Ciclo</label>
                            <select class="form-control" id="aCiclo">
                              <option>1</option>
                              <option>2</option>
                            </select>
                        </div>

                        <div class="form-group">
                          <label for="aAnno">Año</label>
                          <input type="text" class="form-control" id="aAnno" placeholder="Año">
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
