<%-- 
    Document   : formClientes
    Created on : 02/10/2019, 19:30:36
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                  <h3>Alta Clientes</h3>
                  <hr />
                  <form>
                    <p>
                        <label for="txtNombre">Nombre:</label>
                        <input name="txtNombre" class="form-control" />
                    </p>
                    <input type="submit" class="btn btn-primary" value="Aceptar" />
                    <a href="index.jsp" class="btn btn-secondary">Volver</a>
                  </form>
              </div>
              <div class="col-2"></div>
            </div>
          </div>
    </body>
</html>
