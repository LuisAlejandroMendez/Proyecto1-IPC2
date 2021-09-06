<%-- 
    Document   : index
    Created on : 29 ago. 2021, 21:30:00
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en" dir="ltr">

    <head>
        <meta charset="utf-8">
        <title>Mi Muebleria</title>
        <link rel="stylesheet" href="css/style.css">
    </head>

    <body>
        <form class="box" action="LoginServlet" method="POST">
            <h1>Inicio de Sesion</h1>
            <input type="text" name="username" placeholder="Usuario">
            <input type="password" name="password" placeholder="Contraseña">
            <input type="submit" name="login" value="Acceder">
        </form>
    </body>

    <footer class="pie">
        <h5> Mi Muebleria © 2021</h5>
    </footer>

</html>