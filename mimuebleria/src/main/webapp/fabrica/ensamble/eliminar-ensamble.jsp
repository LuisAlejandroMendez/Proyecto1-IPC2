<%-- 
    Document   : eliminar-ensamble
    Created on : 2/09/2021, 22:00:14
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fabrica | Ensamble | Eliminar Ensamble</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container">
            <h1>Eliminar Ensamble</h1>
            <form action="../../nuevoEnsambleServlet" method="post">
                <div>
                    <label for="exampleFormControlInput1" class="form-label">No funcional</label>
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Nombre</label>
                    <input type="text" name="nombre" class="form-control" id="exampleFormControlInput1" placeholder="nombre de la pieza" required>
                </div>
                
                <button type="submit" class="btn btn-primary">Guardar</button>
            </form>
        </div>
    </body>
</html>
