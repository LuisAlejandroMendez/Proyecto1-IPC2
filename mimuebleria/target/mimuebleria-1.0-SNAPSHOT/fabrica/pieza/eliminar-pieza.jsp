<%-- 
    Document   : eliminar-pieza
    Created on : 2/09/2021, 20:40:55
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fabrica | Pieza | Eliminar Pieza</title>
        <!--  
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/css/bootstrap-select.min.css" rel="stylesheet"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/bootstrap-select.min.js"></script>-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/css/bootstrap-select.min.css" rel="stylesheet"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/bootstrap-select.min.js"></script>
        <script src="eliminar-pieza.js"></script>   
    </head>

    <body>
        <div class="container">
            <br>
            <h1 alligm="center">CRUD - PIEZA</h1>
            <h5>->Eliminar Pieza!</h5>
            <br>
            <form id="form" action="../../eliminarPiezaServlet" method="post">
                <select id="piezas" class="selectpicker show-menu-arrow" 
                        data-style="form-control" 
                        data-live-search="true" 
                        title="-- Selecciona una pieza--"
                        required>
                </select>
                <div class="mb-3">
                    <input type="hidden" name="id_p" class="form-control" id="exampleFormControlInput1" placeholder="nombre de la pieza" required>
                </div>
                <button type="submit" class="btn btn-primary">Eliminar</button>
            </form>
        </div>  
    </body>
</html>
