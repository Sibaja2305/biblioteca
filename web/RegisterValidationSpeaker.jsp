<%-- 
    Document   : RegisterValidationSpeaker
    Created on : 25/06/2023, 10:15:56 PM
    Author     : Hp EliteBook
--%>
<%@page import="databasemysql.ConnectionMysql"%>
<%

    ConnectionMysql mysql = new ConnectionMysql("portal_sede_sur");

    String code = request.getParameter("txtCodeSpeaker").trim();
    String speakerWire = request.getParameter("txtspeakerWire").trim();
    String electricalConnector = request.getParameter("txtElectricalConnector").trim();
    String auxiliaryAudio = request.getParameter("txtAuxiliaryAudio").trim();
   

    // Validar el usuario y contrase�a
    if (mysql.insertSpeaker(code, speakerWire, electricalConnector, auxiliaryAudio)) {
        // Inicio de sesi�n exitoso

        response.sendRedirect("SearchSpeaker.jsp"); // P�gina de inicio despu�s de iniciar sesi�n
    } else {
        // Inicio de sesi�n fallido
        out.println("<script>alert('Datos incorrectos'); window.location.href='AddSpeaker.jsp';</script>");
    }
%>

