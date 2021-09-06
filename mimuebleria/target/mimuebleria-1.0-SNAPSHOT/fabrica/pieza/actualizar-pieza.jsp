<%-- 
    Document   : actualizar-pieza
    Created on : 2/09/2021, 20:41:04
    Author     : Luis
--%>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Fabrica | Pieza | Actualizar Pieza</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeq<EIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>

        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/css/bootstrap-select.min.css" rel="stylesheet"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/bootstrap-select.min.js"></script>
        <script src="actualizar-pieza.js"></script>
    </head>

    <body>
        <div class="container">
            <br>
            <h1 allign="center">CRUD - Pieza</h1>
            <h5>-> Actualizar Pieza!</h5>
            <br>
            <form id="form" action="../../actualizarPiezaServlet" method="post">
                <select nombre="piezas" id="piezas" class="selectpicker show-menu-arrow" 
                        data-style="form-control" 
                        data-live-search="true" 
                        title="- Selecciona una pieza -"
                        required>
                </select>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Nombre:</label>
                    <input type="text" name="nombre" class="form-control" nombre="exampleFormControlInput1" placeholder="nombre de la pieza" required>
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label">Precio:</label>
                    <input type="number" name="precio" class="form-control"  placeholder="15.00" required="">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label">Cantidad a Stock:</label>
                    <input type="number" name="stock" class="form-control" placeholder="1" required="">
                </div>
                <button type="submit" class="btn btn-primary">Actualizar</button>
            </form>
        </div>
    </body>
</html>
