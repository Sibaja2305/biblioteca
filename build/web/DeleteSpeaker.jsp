<%-- 
    Document   : DeleteSpeaker
    Created on : 26/06/2023, 10:21:14 AM
    Author     : Hp EliteBook
--%>

<%@page import="databasemysql.ConnectionMysql"%>
<%
    
    ConnectionMysql mysql = new ConnectionMysql("portal_sede_sur");   
     
    String code = request.getParameter("deleteSpeaker");
   

    // Validar el usuario y contrase�a
    if (mysql.deleteSpeaker(code)) {
        // Inicio de sesi�n exitoso
        
        response.sendRedirect("SearchSpeaker.jsp"); // P�gina de inicio despu�s de iniciar sesi�n
    } else {
        // Inicio de sesi�n fallido
        out.println("<script>alert('No se puede eliminar'); window.location.href='SearchSpeaker.jsp';</script>");
    }
%>
