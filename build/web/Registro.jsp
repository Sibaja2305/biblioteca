<%-- 
    Document   : Registro
    Created on : 14 jun. 2023, 16:20:58
    Author     : ucr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">

        <title>JSP Page</title>
    </head>
    <body>
        
        <div class="container">
            <h1>Registro</h1>
        <form method="post" action="RegistrarValidation.jsp">
            <div class="form-group">
                <label>Email:</label>
                <input type="email" class="form-control" name="email" required>
            </div>
            <div class="form-group">
                <label>Contraseña:</label>
                <input type="password" class="form-control" name="password" required>
            </div>
                  <div class="form-group">
                <label>Privilegio:</label>
                <input type="text" class="form-control" name="level" required>
            </div>
            <button type="submit" class="btn btn-primary">Registrarse</button>
           
        </form>
            </div>
    </body>
</html>
