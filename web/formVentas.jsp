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
        <title>Licencias</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
              <div class="col-2"></div>
              <div class="col-8">
                  <h3>Alta Licencia</h3>
                  <hr />
                  <form method="POST">
                    <p>
                        <label for="txtDesde">Desde:</label>
                        <input name="txtDesde" class="form-control" />
                        <label for="txtHasta">Hasta:</label>
                        <input name="txtHasta" class="form-control" />
                        
                        <label for="cmbCliente">Cliente:</label>
                        <select name="cmbCliente" class="form-control">
                            <option value="">SELECCIONE</option>
                            <c:forEach items="${listaClientes}" var="cli">
                                <option value="${cli.id}">${cli.nombre}</option>
                            </c:forEach>
                        </select>
                        
                        <br />
                        <label for="spnCantidad">Cantidad:</label>
                        <input type="number" min="0" max="255" value="0" step="1" class="font-control" /> 
                        <br />
                        <label for="cmbMes">Mes</label>
                        <select name="cmbMes">
                            <option value="1" selected>Enero</option>
                            <option value="2">Febrero</option>
                            <option value="3">Marzo</option>
                            <option value="4">Abril</option>
                            <option value="5">Mayo</option>
                            <option value="6">Junio</option>
                            <option value="7">Julio</option>
                            <option value="8">Agosto</option>
                            <option value="9">Septiempre</option>
                            <option value="10">Octubre</option>
                            <option value="11">Noviembre</option>
                            <option value="12">Diciembre</option>                            
                        </select>
                        <label for="spnAnio">Año</label>
                        <input name="spnAnio" type="number" min="1900" max="2099" value="2019" step="1">
                    </p>
                    <input type="submit" class="btn btn-primary" value="Aceptar" />
                  </form>                  
              </div>
              <div class="col-2"></div>
            </div>
          </div>
    </body>
</html>

