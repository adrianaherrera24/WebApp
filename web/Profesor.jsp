<%-- 
    Document   : Profesor
    Created on : 09/04/2019, 11:34:28 AM
    Author     : Adriana Herrera
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profesor</title>
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
        <h4>Módulo de Profesores</h4>
        <div class="container">
            <form action="Profesor" method="POST">
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

                <button type="submit" class="btn btn-primary">Guardar</button>
            </form>
        </div>
    </body>
</html>
