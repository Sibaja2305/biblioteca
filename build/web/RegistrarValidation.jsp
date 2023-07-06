
<%@page  import="databasemysql.ConnectionMysql"%>


<%@ page import="databasemysql.ConnectionMysql.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<%
    
    ConnectionMysql mysql = new ConnectionMysql("portal_sede_sur");   
     
    String email = request.getParameter("email").trim();
    String password = request.getParameter("password").trim();
    String level = request.getParameter("level").trim();

    // Validar el usuario y contraseña
    if (mysql.insertUser(email, password, level)) {
        // Inicio de sesión exitoso
        
        response.sendRedirect("login.jsp"); // Página de inicio después de iniciar sesión
    } else {
        // Inicio de sesión fallido
        out.println("<script>alert('Datos incorrectos'); window.location.href='Registro.jsp';</script>");
    }
%>
