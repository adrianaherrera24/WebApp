<%-- 
    Document   : Curso
    Created on : 09/04/2019, 11:24:07 AM
    Author     : Adriana Herrera
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cursos</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <style>
            h4{
                text-align: center;
                font-size: 50px;
                margin-top: 5px;
            }
        </style>
    </head>
    <body>
        <h4>Módulo de Cursos</h4>
        <div class="container">
            <form action="Curso" method="POST">
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

                <button type="submit" class="btn btn-primary">Guardar</button>
            </form>
        </div>
    </body>
</html>
