<%-- 
    Document   : usuario
    Created on : 2/09/2021, 19:56:05
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin | Usuario</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
    </head>

    <body>
        <div class="container">
            <br>
            <h1 allign="center">Usuario</h1>
            <ul class="list-group list-group-flush">
                <li class="list-group-item"><h5>CRUD - Usuario</h5></li>
                <li class="list-group-item"><a href="usuario/nuevo-usuario.jsp">Nuevo Usuario</a></li>
                <li class="list-group-item"><a href="usuario/actualizar-usuario.jsp">Actualizar Usuario</a></li>
                <li class="list-group-item"><a href="usuario/desactivar-usuario.jsp">Desactivar Usuario</a></li>
            </ul>
        </div>
    </body>
</html>
