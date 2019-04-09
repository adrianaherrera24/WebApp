<%-- 
    Document   : Carrera
    Created on : 07/04/2019, 01:36:44 PM
    Author     : Adriana Herrera
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrera</title>
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
        <h4>Módulo de Carreras</h4>
        <div class="container">
            <form action="Carrera" method="POST">
                <div class="form-group">
                  <label for="aCodigo">Código</label>
                  <input type="text" class="form-control" id="aCodigo" placeholder="Código">
                </div>
                <div class="form-group">
                  <label for="aNombre">Nombre</label>
                  <input type="text" class="form-control" id="aNombre" placeholder="Nombre">
                </div>
                <div class="form-group">
                  <label for="aTitulo">Título</label>
                  <input type="text" class="form-control" id="aTitulo" placeholder="Título">
                </div>
                <div class="form-group">
                    <button type="button" class="btn btn-success" name="aEditar" >Editar Cursos</button>
                </div>
                
                <button type="submit" class="btn btn-primary">Guardar</button>
            </form>
        </div>
    </body>
</html>
