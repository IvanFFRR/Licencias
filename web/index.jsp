<%-- 
    Document   : index
    Created on : 02/10/2019, 19:28:12
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INICIO</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="collapse navbar-collapse" id="navbarNav">
              <ul class="navbar-nav">
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navClientes" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Clientes
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navClientes">
                      <a class="dropdown-item" href="formClientes.jsp">Alta Clientes</a>
                      <a class="dropdown-item" href="Clientes?modo=lista">Listado</a>
                    </div>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navVentas" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      Ventas
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navVentas">
                      <a class="dropdown-item" href="Ventas">Alta Ventas</a>
                      <a class="dropdown-item" href="Ventas?modo=lista">Listado Ventas</a>
                    </div>
                  </li>
              </ul>
            </div>
          </nav>
        <h1>Bienvenido</h1>
    </body>
</html>
