<%-- 
    Document   : RegisterValidationComputer
    Created on : 26/06/2023, 09:03:49 PM
    Author     : Hp EliteBook
--%>

<%@page import="databasemysql.ConnectionMysql"%>
<meta charset="UTF-8">
<%

    ConnectionMysql mysql = new ConnectionMysql("portal_sede_sur");

    String code = request.getParameter("txtCodeComputer").trim();
    String chargerComputer = request.getParameter("txtChargerComputer").trim();
    String softCaseComputer = request.getParameter("txtSoftCaseComputer").trim();
    String briefcaseComputer = request.getParameter("txtbriefcaseComputer").trim();
   

    // Validar el usuario y contrase�a
    if (mysql.insertComputer(code, chargerComputer, softCaseComputer, briefcaseComputer)) {
        // Inicio de sesi�n exitoso

        response.sendRedirect("SearchComputer.jsp"); // P�gina de inicio despu�s de iniciar sesi�n
    } else {
        // Inicio de sesi�n fallido
        out.println("<script>alert('Codigo ya esta registrado'); window.location.href='AddComputer.jsp';</script>");
    }
%>
