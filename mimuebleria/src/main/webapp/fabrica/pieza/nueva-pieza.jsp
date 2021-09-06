<%-- 
    Document   : nueva-pieza
    Created on : 2/09/2021, 20:40:06
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fabrica | Pieza | Nueva pieza</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeq<EIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
    </head>

    <body>
        <div class="container">
            <br>
            <h1 allign="center">CRUD - Pieza</h1>
            <h5>-> Nueva Pieza!</h5>
            <br>
            <form action="../../piezaServlet" method="post">
                <div class="mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label">ID Tipo de Pieza:</label>
                    <input type="number" name="id_tp" class="form-control" id="exampleFormControlInput1" placeholder="1=clasica   2=rustica   ..." required="">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Nombre Pieza:</label>
                    <input type="text" name="nombre" class="form-control" id="exampleFormControlInput1" placeholder="nombre de la Pieza" required>
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label">Precio Pieza:</label>
                    <input type="number" name="precio" class="form-control" id="exampleFormControlInput1" placeholder="15.00" required="">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label">Cantidad a Stock:</label>
                    <input type="number" name="stock" class="form-control" id="exampleFormControlInput1" placeholder="1" required="">
                </div>
                <button type="submit" class="btn btn-primary">Guardar</button>
            </form>
        </div>
    </body>
</html>
