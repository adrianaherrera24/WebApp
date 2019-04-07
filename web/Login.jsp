<%-- 
    Document   : Login
    Created on : 07/04/2019, 10:48:00 AM
    Author     : Adriana Herrera
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <style>
            td{
                padding: 10px;
            }
            
            div{
                width: 50%;
                border: 1px solid black;
                border-radius: 5px;
                background-color: lightseagreen;
            }
        </style>
    </head>
    <body>
    <center><h1><u>Login</u></h1></center>
    <center>
        <div>
            <form action="Login" method="POST">
                <table>
                    <tr>
                        <td>Usuario</td>
                        <td><input type="text" class="form-control" name="username" placeholder="Usuario"></td>
                    </tr>
                    <tr>
                        <td>Contraseña</td>
                        <td><input text="password" class="form-control" name="password" placeholder="Contraseña"></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center"><input class="btn btn-success" type="submit" value="Ingresar"></td>
                    </tr>
                </table>
            </form>
        </div>
    </center>
    </body>
</html>
