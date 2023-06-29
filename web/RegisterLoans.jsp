<%-- 
    Document   : RegisterLoans
    Created on : 28/06/2023, 02:11:06 PM
    Author     : Hp EliteBook
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="databasemysql.ConnectionMysql"%>
<%

    ConnectionMysql mysql = new ConnectionMysql("portal_sede_sur");

    String code = request.getParameter("txtCode").trim();
    String identification = request.getParameter("txtIdentification").trim();
    String fullName = request.getParameter("txtFullName").trim();
    String typeUser = request.getParameter("txtTypeUser").trim();
    String career = request.getParameter("txtCareer").trim();
    String nameAccessorie = request.getParameter("txtNameAccessorie").trim();
    String loanDate = request.getParameter("txtLoanDate").trim();
    String returnDate = request.getParameter("txtReturnDate").trim();
    out.println(loanDate);
    SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
    String fecha =loanDate.split("T")[0].replace("-", "/");
    fecha = fecha.split("/")[2] +"/"+ fecha.split("/")[1] +"/"+fecha.split("/")[0];
    Date loanDateTime =  dateFormat.parse(fecha);
    java.sql.Date sqlDate = new java.sql.Date(loanDateTime.getTime());
out.println("utilDate:" + loanDateTime);
out.println("sqlDate:" + sqlDate);
    
    out.println(loanDateTime.getYear());
    // Validar el usuario y contraseña
    if (mysql.insertLoans(code, identification, fullName, typeUser, career, nameAccessorie, sqlDate, returnDate)) {
        // Inicio de sesión exitoso

        response.sendRedirect("menu.jsp"); // Página de inicio después de iniciar sesión
    } 
%>

