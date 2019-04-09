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
        <h4>Módulo de Alumnos</h4>
        <div class="container">
            <form action="Alumno" method="POST">
                <div class="form-group">
                  <label for="aCedula">Cédula</label>
                  <input type="text" class="form-control" id="aCedula" placeholder="Cédula">
                </div>
                <div class="form-group">
                  <label for="aNombre">Nombre</label>
                  <input type="text" class="form-control" id="aNombre" placeholder="Nombre">
                </div>
                <div class="form-group">
                  <label for="aTelefono">Teléfono</label>
                  <input type="text" class="form-control" id="aTelefono" placeholder="Teléfono">
                </div>
                <div class="form-group">
                  <label for="aEmail">E-mail</label>
                  <input type="email" class="form-control" id="aEmail" placeholder="name@example.com">
                </div>
                <div class="form-group">
                  <label for="aFecha">Fecha de Nacimiento</label>
                  <input type="date" class="form-control" id="aFecha">
                </div>
                <div class="form-group">
                  <label for="aCarrera">Carrera</label>
                    <select class="form-control" id="aCarrera">
                      <option>EIF</option>
                      <option>ADM</option>
                      <option>RRI</option>
                    </select>
                </div>

                <button type="submit" class="btn btn-primary">Guardar</button>
            </form>
        </div>
    </body>
</html>
