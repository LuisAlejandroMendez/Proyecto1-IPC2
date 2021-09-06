<%-- 
    Document   : nuevo-ensamble
    Created on : 2/09/2021, 22:08:31
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo mueble</title>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/css/bootstrap-select.min.css" rel="stylesheet"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/bootstrap-select.min.js"></script>
        <script src="nuevo-mueble.js"></script>
    </head>
    <body>
        <div class="container">
            <h1>Nuevo mueble!</h1>
            <form action="../../nuevoMuebleServlet" method="post">
                <select id="piezas" class="selectpicker show-menu-arrow" 
                        data-style="form-control" 
                        data-live-search="true",
                        multiple="multiple"
                        title="-- Selecciona una pieza--"
                        required>
                </select>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Nombre</label>
                    <input type="hidden" name="piezas" class="form-control" id="exampleFormControlInput1" placeholder="nombre de la pieza" required>
                    <input type="text" name="nombre" class="form-control" id="exampleFormControlInput1" placeholder="nombre de la pieza" required>
                </div>
                <button type="submit" class="btn btn-primary">Guardar</button>
            </form>
        </div>
    </body>
</html>
