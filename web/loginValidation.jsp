<%@page import="databasemysql.ConnectionMysql"%>
<%@ page import="files.JavaFiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="files.JavaFiles.*" %>

<%
    // Datos de usuarios registrados (simulación)
  
   
    // Obtener los parámetros del formulario
   ConnectionMysql mysql = new ConnectionMysql("portal_sede_sur");   
     
    String email = request.getParameter("email").trim();
    String password = request.getParameter("password").trim();
     

    // Validar el usuario y contraseña
    if (mysql.userValidation(email, password)) {
        // Inicio de sesión exitoso
        session.setAttribute("email", email);
        response.sendRedirect("menu.jsp"); // Página de inicio después de iniciar sesión
        session.setAttribute("flag", "1");
    } else {
        // Inicio de sesión fallido
        out.println("<script>alert('Usuario o contraseña incorrectos'); window.location.href='login.jsp';</script>");
    }
%>
