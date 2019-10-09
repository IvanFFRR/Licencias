<%-- 
    Document   : listadoClientes
    Created on : 02/10/2019, 20:26:43
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado Clientes</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
              <div class="col-1"></div>
              <div class="col-10">
                  <h1>Listado Clientes</h1>
                  <table class="table table-striped table-hover">
                    <tr><th>NOMBRE</th></tr>
                      <c:forEach items="${listaClientes}" var="c">
                          <tr><td>${c.nombre}</td></tr>
                    </c:forEach>
                  </table>
              </div>
              <div class="col-1"></div>
            </div>
        </div>
    </body>
</html>
