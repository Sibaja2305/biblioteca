<%-- 
    Document   : DeleteSpeaker
    Created on : 26/06/2023, 10:21:14 AM
    Author     : Hp EliteBook
--%>

<%@page import="databasemysql.ConnectionMysql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    
    ConnectionMysql mysql = new ConnectionMysql("portal_sede_sur");   
     
    String code = request.getParameter("deleteSpeaker");
   

    // Validar el usuario y contraseña
    if (mysql.deleteSpeaker(code)) {
        // Inicio de sesión exitoso
        
        response.sendRedirect("SearchSpeaker.jsp"); // Página de inicio después de iniciar sesión
    } else {
        // Inicio de sesión fallido
        out.println("<script>alert('No se puede eliminar'); window.location.href='SearchSpeaker.jsp';</script>");
    }
%>
