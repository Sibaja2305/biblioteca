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
    
    SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm");
    String fecha =loanDate.split("T")[0].replace("-", "/");
    fecha = fecha.split("/")[2] +"/"+ fecha.split("/")[1] +"/"+fecha.split("/")[0];
    String hora=loanDate.split("T")[1].split("\\.")[0];
    String fechaHora=fecha+ " "+ hora;
    Date loanDateTime =  dateFormat.parse(fechaHora);
    java.sql.Timestamp sqlLoanDate= new java.sql.Timestamp(loanDateTime.getTime());
    //date returnDate
    String devolver=returnDate.split("T")[0].replace("-", "/");
     devolver = devolver.split("/")[2] +"/"+ devolver.split("/")[1] +"/"+devolver.split("/")[0];
    String hoursReturn=loanDate.split("T")[1].split("\\.")[0];
   String fechadevolver=devolver+ " "+ hoursReturn;
    Date ReturnDateTime =  dateFormat.parse(fechadevolver);
    java.sql.Timestamp sqlReturnDate= new java.sql.Timestamp(ReturnDateTime.getTime());
    
    
    
    if (mysql.insertLoans(code, identification, fullName, typeUser, career, nameAccessorie, sqlLoanDate, sqlReturnDate)) {
        // Registro correctamente a la dataBases

        response.sendRedirect("menu.jsp"); // Página de inicio después de iniciar sesión
    } 
%>

