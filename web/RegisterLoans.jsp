<%-- 
    Document   : RegisterLoans
    Created on : 28/06/2023, 02:11:06 PM
    Author     : Hp EliteBook
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="databasemysql.ConnectionMysql"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%

    ConnectionMysql mysql = new ConnectionMysql("portal_sede_sur");
    String category = request.getParameter("category").trim();
    String code = request.getParameter("txtCode").trim();
    String identification = request.getParameter("txtIdentification").trim();
    String fullName = request.getParameter("txtFullName").trim();
    String typeUser = request.getParameter("txtTypeUser").trim();
    String career = request.getParameter("txtCareer").trim();
    String nameAccessorie = request.getParameter("txtNameAccessorie").trim();
    String loanDate = request.getParameter("txtLoanDate").trim();
    String returnDate = request.getParameter("txtReturnDate").trim();

    SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm");
    String date = loanDate.split("T")[0].replace("-", "/");
    date = date.split("/")[2] + "/" + date.split("/")[1] + "/" + date.split("/")[0];
    String hour = loanDate.split("T")[1].split("\\.")[0];
    String dateHour = date + " " + hour;
    Date loanDateTime = dateFormat.parse(dateHour);
    java.sql.Timestamp sqlLoanDate = new java.sql.Timestamp(loanDateTime.getTime());
    //date returnDate
    String deliver = returnDate.split("T")[0].replace("-", "/");
    deliver = deliver.split("/")[2] + "/" + deliver.split("/")[1] + "/" + deliver.split("/")[0];
    String hoursReturn = loanDate.split("T")[1].split("\\.")[0];
    String dateReturn = deliver + " " + hoursReturn;
    Date ReturnDateTime = dateFormat.parse(dateReturn);
    java.sql.Timestamp sqlReturnDate = new java.sql.Timestamp(ReturnDateTime.getTime());

    if (mysql.insertLoans(code, identification, fullName, typeUser, career, nameAccessorie, sqlLoanDate, sqlReturnDate, category)) {
        // Registro correctamente a la dataBases
        if (!category.equalsIgnoreCase("Accesorio")) {
        mysql.updateStatePres(category, code);
        
        }
         out.println("<script>alert('Accesorio Registrado'); window.location.href='menu.jsp';</script>"); 
    } else{
           out.println("<script>alert('Fallo del Ingreso del Accesorio'); window.location.href='LoansAccessories.jsp';</script>");   
        }
         

    
%>

