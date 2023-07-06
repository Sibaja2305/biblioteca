
<%@page  import="databasemysql.ConnectionMysql"%>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@ page import="databasemysql.ConnectionMysql.*" %>

<%
    
    ConnectionMysql mysql = new ConnectionMysql("portal_sede_sur");   
     
    String id = request.getParameter("eliminar");
   

    // Validar el usuario y contraseña
    if (mysql.deleteUser(Integer.parseInt(id))) {
        // Inicio de sesión exitoso
        
        response.sendRedirect("dashboard.jsp"); // Página de inicio después de iniciar sesión
    } else {
        // Inicio de sesión fallido
        out.println("<script>alert('No se puede eliminar'); window.location.href='dashboard.jsp';</script>");
    }
%>
