<%-- 
    Document   : Registro
    Created on : 14 jun. 2023, 16:20:58
    Author     : ucr
--%>

<%@page import="java.sql.Date"%>
<%@page import="clasess.User"%>
<%@page import="databasemysql.ConnectionMysql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">

        <title>Editar Usuario</title>
    </head>
    <body>
        <%

            
            String user = request.getParameter("usuario").trim();
            user = user.replace("User{", "").replace("}", "");

            User us = new User(
                    Integer.parseInt(user.split(",")[0].split("=")[1]),
                    user.split(",")[1].split("=")[1],
                    user.split(",")[2].split("=")[1],
                    user.split(",")[3].split("=")[1],
                    null,
                    user.split(",")[5].split("=")[1]
            );
        %>
        <div class="container">
            <h1>Registro</h1>
            <form method="get" action="Update.jsp">
                <div class="form-group">
                    <label>id</label>
                    <input disabled="true" type="text" class="form-control" name="idsd" required value="<%=us.getId()%>">
                </div>
                <div class="form-group">
                    
                    <input hidden="true" type="text" class="form-control" name="id" required value="<%=us.getId()%>">
                </div>
                  <div class="form-group">
                    <label>Correo electrónico</label>
                    <input disabled="true" type="text" class="form-control" name="emails" required value="<%=us.getUserName()%>">
                </div>
                
                <div class="form-group">
                    
                    <input hidden="true"  type="text" class="form-control" name="email" required value="<%=us.getUserName()%>">
                </div>
                <div class="form-group">
                    <label>Contraseña</label>
                    <input type="text" class="form-control" name="pass" required value="<%=us.getPassword()%>">
                </div>
                
                
                <div class="form-group">
                    <label>Nivel de Acceso</label>
                    <input type="text" class="form-control" name="level" required value="<%=us.getAccessLevel()%>">
                </div>
                <div class="form-group">
                    <label>App</label>
                     <input type="text" class="form-control" name="app" required value="<%=us.getAppAccess()%>">
               </div>
                <button type="submit" class="btn btn-primary">Actualizar</button>

            </form>
        </div>
    </body>
</html>
