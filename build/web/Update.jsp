<%@page import="clasess.User"%>
<%@page import="databasemysql.ConnectionMysql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>



<%
    
    ConnectionMysql mysql = new ConnectionMysql("portal_sede_sur");   
  
    int id = Integer.parseInt(request.getParameter("id"));
    
    String password = request.getParameter("pass");
    String email = request.getParameter("email");
    String access_level = request.getParameter("level");
    String app = request.getParameter("app");
    
    User us = new User(id, email, password, access_level, null, app); 
    out.print(us.toString());
    
    // Validar el usuario y contraseña
    if (mysql.updateUser(us)) {
        // Inicio de sesión exitoso
        
        response.sendRedirect("dashboard.jsp"); // Página de inicio después de iniciar sesión
    } else {
        // Inicio de sesión fallido
        out.println("<script>alert('No se puede actualizar'); window.location.href='dashboard.jsp';</script>");
    }
%>