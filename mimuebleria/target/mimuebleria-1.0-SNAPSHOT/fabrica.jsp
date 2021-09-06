<%-- 
    Document   : fabrica
    Created on : 30 ago. 2021, 16:25:07
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fabrica</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container">
            <h1>Area de Fabrica</h1>
            <ul class="list-group list-group-flush">
                <li class="list-group-item"><a href="fabrica/pieza.jsp">Piezas</a></li>
                <li class="list-group-item"><a href="fabrica/ensamble.jsp">Ensamble</a></li>
                <li class="list-group-item"><a href="fabrica/mueble.jsp">Muebles</a></li>
            </ul>
        </div>
    </body>
</html>

<!--
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css1/fabricaCss.css" rel="stylesheet"/>
        <title>Area de Fabrica | Mi Muebleria</title>
    </head>
    <body>  
        <header>Area de Fabrica</header>
        <div class="logout">
            <ul class="cerrarSesion">
                <li><a href="CerrarSesion">Cerrar Sesion</a></li>
            </ul>
        </div>
        <div class="fabrica">
            <nav class="navegacion">
                <ul class="menu">
                    <li>
                        <a href="Piezas_Servlet">Piezas</a>
                    </li>
                    <li><a href="#">Ensamblar Muebles a partir de Piezas</a>
                        <form class="form" method="POST" action="">
                            <input type="text" name="tipoMueble" placeholder="Tipo de Mueble" required>
                            <hr>
                            <input type="text" name="nombreUsuario" placeholder="Nombre de Usuario" required>
                            <hr>
                            <input type="date" name="fechaEnsamble" placeholder="Fecha de Ensamble" required>
                            <hr>
                            <input type="submit" value="Ensamblar Mueble">
                        </form>
                    </li>
                    <li><a href="">Consultar Informacion de los muebles Creados</a></li>

                    <li id="cons"><a href="">Consultar cantidad de Piezas</a>
                        <ul class="itemsConsulta">
                            <li><a href="muebleria/consulta.jsp?consulta=mayorMenor,tipoConsulta=Piezas">Mayor a menor</a></li>
                            <li><a href="muebleria/consulta.jsp?consulta=menorMayor,tipoConsulta=Piezas">Menor a Mayor</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="archivoCarga">
            <form class="archivo" method="POST" action="CargaArchivo_Servlet" enctype="multipart/form-data">
                <input type="file" name="fileCarga" required>
                <input type="submit" value="Enviar Archivo">
            </form>
        </div>
    </body>
</html>
-->
