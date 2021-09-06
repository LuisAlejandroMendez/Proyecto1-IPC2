<%-- 
    Document   : nuevo-usuario
    Created on : 5 sep. 2021, 14:40:50
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin | Usuario | Nuevo Usuario</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeq<EIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
    </head>

    <body>
        <div class="container">
            <br>
            <h1 allign="center">CRUD - Usuario</h1>
            <h5>-> Nuevo Usuario!</h5>
            <br>
            <form action="../../usuarioServlet" method="post">
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Username:</label>
                    <input type="text" name="username" class="form-control" id="exampleFormControlInput1" placeholder="nombre de usuario" required>
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label">Password:</label>
                    <input type="text" name="password" class="form-control" id="exampleFormControlInput1" placeholder="contraseña" required="">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label">Area:</label>
                    <input type="text" name="area" class="form-control" id="exampleFormControlInput1" placeholder="A=Fabrica   B=Ventas   C=Admin" required="">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label">Activado:</label>
                    <input type="text" name="activado" class="form-control" id="exampleFormControlInput1" placeholder="S=si   N=no" required="">
                </div>
                <button type="submit" class="btn btn-primary">Guardar</button>
            </form>
        </div>
    </body>
</html>
