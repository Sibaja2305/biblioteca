<%-- 
    Document   : RegisterValidationProjectionKit
    Created on : 26/06/2023, 11:01:47 PM
    Author     : Hp EliteBook
--%>

<%@page import="databasemysql.ConnectionMysql"%>
<meta charset="UTF-8">
<%

    ConnectionMysql mysql = new ConnectionMysql("portal_sede_sur");

    String code = request.getParameter("txtCodeProjection").trim();
    String projectionCase = request.getParameter("txtProjectionCase").trim();
    String electricityWire = request.getParameter("txtElectricityWire").trim();
    String VGAConnector = request.getParameter("txtVGAConnector").trim();
     String HDMIConnector = request.getParameter("txtHDMIConnector").trim();
    String projectionControl = request.getParameter("txtProjectorControl").trim();
    String battery = request.getParameter("txtBattery").trim();
    String extension = request.getParameter("txtExtension").trim();
    String powerStrip = request.getParameter("txtPowerStrip").trim();
    String plasticBox = request.getParameter("txtPlasticBox").trim();

    // Validar el usuario y contraseña
    if (mysql.insertProjectionKit(code, projectionCase, electricityWire, VGAConnector, HDMIConnector, projectionControl, battery, extension, powerStrip, plasticBox)) {
        // Inicio de sesión exitoso

        response.sendRedirect("SearchProjection.jsp"); // Página de inicio después de iniciar sesión
    } else {
        // Inicio de sesión fallido
        out.println("<script>alert('Codigo ya esta registrado'); window.location.href='AddProjectionKit.jsp';</script>");
    }
%>
