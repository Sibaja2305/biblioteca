<%-- 
    Document   : SearchComputer
    Created on : 26/06/2023, 08:43:41 PM
    Author     : Hp EliteBook
--%>

<%@page import="clases.Computer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="databasemysql.ConnectionMysql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
         <%

            ConnectionMysql mysql = new ConnectionMysql("portal_sede_sur");
            ArrayList<Computer> listComputer = mysql.getComputer();


        %>
        <div class="container">
            <h1>Buscador de Computadoras</h1>
            <hr>
            <br>
            <div >
            <a class="btn btn-success btn-lg" href="AddComputer.jsp">Nuevo </a>
            </div>
            <form class="container" style="display: inline-block;">
                <div style="float: right;">
             <input type="text" name="txtSearch" class="form-label">
             <a type="submit" class="btn btn-success btn-sm" value="search">buscar</a>
             </div>
              </form>
            
            
                 
            <br><br>
            <table  class="table table-bordered">
                <thead>
                    <tr>

                        <th class="text-center">Código</th>
                        <th class="text-center" >Cargador</th>
                        <th class="text-center">Estuche Suave</th>
                        <th class="text-center">Estuche Estilo Maletín</th>
                        <th class="text-center">Estado</th>
                        <th class="text-center">Prestamos</th>
                        <th class="text-center">Acciones</th>

                    </tr>
                </thead>
                <tbody>
                    <% for (int i = 0; i < listComputer.size(); i++) {
                    %>
                    <tr>

                        <td class="align-middle text-center"><%=listComputer.get(i).getCode()%></td>
                        <td class="align-middle text-center"><%=listComputer.get(i).getCharger().equalsIgnoreCase("1")
                                ? "Si"
                                : "no"%> </td>
                        <td class="align-middle text-center"><%=listComputer.get(i).getSoftCase().equalsIgnoreCase("1")
                                ? "Si"
                                : "no"%></td>
                        <td class="align-middle text-center"><%=listComputer.get(i).getBriefcase().equalsIgnoreCase("1")
                                ? "Si"
                                : "no"%></td>
                        <td class="align-middle text-center"><%=listComputer.get(i).getState().equalsIgnoreCase("1")
                                ? "Disponible"
                                : "Prestado"%></td>
                         <td class="align-middle text-center ">
                            <form action="ComputerLoan.jsp">
                                <input 
                                    hidden="true"
                                    type="text" 
                                    name="selectComputer"                                         
                                    value="<%=listComputer.get(i).getCode()%>">
                                <input                                        
                                    class="btn btn-outline-success btn-sm" 
                                    type="submit"                                                                              
                                    value="seleccionar" >
                            </form>
                        </td>
                        <td class="text-center">
                            <form action="DeleteComputer.jsp">
                                <input 
                                    hidden="true"
                                    type="text" 
                                    name="deleteComputer" 
                                    id="id" 
                                    value="<%=listComputer.get(i).getCode()%>">
                                <input                                        
                                    class="btn btn-danger btn-sm" 
                                    type="submit"                                                                              
                                    value="Eliminar" >
                            </form>



                        </td>
                       

                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>
