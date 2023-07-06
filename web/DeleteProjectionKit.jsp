<%-- 
    Document   : DeleteProjectionKit
    Created on : 26/06/2023, 11:25:50 PM
    Author     : Hp EliteBook
--%>
<%@page import="databasemysql.ConnectionMysql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    
    ConnectionMysql mysql = new ConnectionMysql("portal_sede_sur");   
     
    String code = request.getParameter("deleteProjectionKit");
   

    // Validar el codigo de la computadora
    if (mysql.deleteProjectionKit(code)) {
        
        
        response.sendRedirect("SearchProjection.jsp"); // Página despues de eliminar computadora
    } else {
        // fallo
        out.println("<script>alert('Este objeto no se puede eliminar'); window.location.href='SearchProjection.jsp';</script>");
    }
%>

