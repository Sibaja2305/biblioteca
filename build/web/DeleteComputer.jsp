<%-- 
    Document   : DeleteComputer
    Created on : 26/06/2023, 09:35:09 PM
    Author     : Hp EliteBook
--%>
<%@page import="databasemysql.ConnectionMysql"%>
<%
    
    ConnectionMysql mysql = new ConnectionMysql("portal_sede_sur");   
     
    String code = request.getParameter("deleteComputer");
   

    // Validar el codigo de la computadora
    if (mysql.deleteComputer(code)) {
        
        
        response.sendRedirect("SearchComputer.jsp"); // Página despues de eliminar computadora
    } else {
        // fallo
        out.println("<script>alert('Este objeto no se puede eliminar'); window.location.href='SearchComputer.jsp';</script>");
    }
%>

