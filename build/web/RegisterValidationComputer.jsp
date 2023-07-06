<%-- 
    Document   : RegisterValidationComputer
    Created on : 26/06/2023, 09:03:49 PM
    Author     : Hp EliteBook
--%>

<%@page import="databasemysql.ConnectionMysql"%>

<%@ page contentType="text/html; charset=UTF-8" %>
<%

    ConnectionMysql mysql = new ConnectionMysql("portal_sede_sur");

    String code = request.getParameter("txtCodeComputer").trim();
    String chargerComputer = request.getParameter("txtChargerComputer").trim();
    String softCaseComputer = request.getParameter("txtSoftCaseComputer").trim();
    String briefcaseComputer = request.getParameter("txtbriefcaseComputer").trim();
   

    // Validar el usuario y contraseña
    if (mysql.insertComputer(code, chargerComputer, softCaseComputer, briefcaseComputer)) {
        // Inicio de sesión exitoso

        response.sendRedirect("SearchComputer.jsp"); // Página de inicio después de iniciar sesión
    } else {
        // Inicio de sesión fallido
        out.println("<script>alert('Codigo ya esta registrado'); window.location.href='AddComputer.jsp';</script>");
    }
%>
