<%-- 
    Document   : formVentas
    Created on : 02/10/2019, 19:42:34
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
              <div class="col-2"></div>
              <div class="col-8">
                  <h3>Alta Ventas</h3>
                  <hr />
                  <form method="POST">
                    <p>
                        <label for="cmbCliente">Cliente:</label>
                        <select name="cmbCliente" class="form-control">
                            <option value="">SELECCIONE</option>
                            <c:forEach items="${listaClientes}" var="cli">
                                <option value="${cli.id}">${cli.nombre}</option>
                            </c:forEach>
                        </select>
                    </p>
                    <input type="submit" class="btn btn-primary" value="Aceptar" />
                  </form>                  
              </div>
              <div class="col-2"></div>
            </div>
          </div>
    </body>
</html>

