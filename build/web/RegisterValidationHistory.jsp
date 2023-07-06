<%-- 
    Document   : RegisterValidationHistory
    Created on : 29/06/2023, 10:16:26 PM
    Author     : yorda
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="databasemysql.ConnectionMysql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    
    ConnectionMysql mysql = new ConnectionMysql("portal_sede_sur");
    String category = request.getParameter("category").trim();
    String id = request.getParameter("id").trim();
    String code = request.getParameter("code").trim();
    String identification = request.getParameter("identification").trim();
    String fullName = request.getParameter("fullName").trim();
    String typeUser = request.getParameter("typeUser").trim();
    String career = request.getParameter("career").trim();
    String nameAccessorie = request.getParameter("nameAccesory").trim();
    String loanDate = request.getParameter("loanDate").trim();
    String returnDate = request.getParameter("returnDate").trim();
    
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
    
    java.util.Date loanDateTime = dateFormat.parse(loanDate.replace("-", "/"));
    java.sql.Timestamp sqlLoanDate = new java.sql.Timestamp(loanDateTime.getTime());
    
    java.util.Date ReturnDateTime = dateFormat.parse(returnDate.replace("-", "/"));
    java.sql.Timestamp sqlReturnDate = new java.sql.Timestamp(ReturnDateTime.getTime());
    
    if (mysql.insertHistoryLoans(code, identification, fullName, typeUser, career, nameAccessorie, sqlLoanDate, sqlReturnDate, category) && mysql.deleteLoan(Integer.parseInt(id))) {
        // Registro correctamente a la dataBases
        if (!category.equalsIgnoreCase("Accesorio")) {
          mysql.updateStateDis(category, code);   
        }
        response.sendRedirect("menu.jsp"); // Página de inicio después de iniciar sesión
    } else {
        out.println(Integer.parseInt(id));
    }
    
%>