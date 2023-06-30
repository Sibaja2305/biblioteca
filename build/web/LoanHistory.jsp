<%-- 
    Document   : SearchProjection
    Created on : 26/06/2023, 10:24:13 PM
    Author     : Hp EliteBook
--%>
<%@page import="clases.LogBookLoans"%>


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
            ArrayList<LogBookLoans> listHistoryLoans = mysql.getHistoryLoans();
            ArrayList<LogBookLoans> listHistoryLoansSearch = new ArrayList();
            String looking = "";
            String codeSearch = "";
            looking = request.getParameter("buscando");
            codeSearch = request.getParameter("txtSearch");

            if (codeSearch != null) {
              
                //listLogBookSearch = mysql.getProjectionKit(codeSearch);
            }

        %>
        <div class="container">
            <h1>Historial</h1>
            <hr>
            <br>
            
            <form action="SearchProjection.jsp" style="display: inline-block; float: right;">
                <div style="display: inline-block;">

                    <input hidden="true" type="text" name="buscando" value="no" class="form-label">

                    <input style="margin-bottom: 5px "type="submit" class="btn btn-info btn-sm" value="Vaciar">
                </div>
            </form>
            <form action="Return.jsp" style="display: inline-block; float: right;">
                <div style="display: inline-block;">
                    <input type="text" name="txtSearch" class="form-label">
                    <input hidden="true" type="text" name="buscando" value="si" class="form-label">
                    <input style="margin-right: 4px;" type="submit" class="btn btn-info btn-sm" value="Buscar">

                </div>
            </form>
            <% if (looking != null) {

                    if (looking.equalsIgnoreCase("si") && !codeSearch.equalsIgnoreCase("")) {


            %>
            <table  class="table table-bordered">
                <thead>
                    <tr>

                        <th class="text-center">ID</th>
                        <th class="text-center" >Codigo</th>
                        <th class="text-center">Carnet UCR</th>
                        <th class="text-center">Nombre Completo</th>
                        <th class="text-center">tipo de Usuario</th>
                        <th class="text-center">Carrera</th>
                        <th class="text-center">Nombre de Accesorio</th>
                        <th class="text-center">Fecha de Prestamos</th>
                        <th class="text-center">Fecha de Devolución</th>
                      
                        
                        

                    </tr>
                </thead>
                <tbody>
                    <% for (int i = 0; i < listHistoryLoansSearch.size(); i++) {
                    %>
                    <tr>

                        
                        <td class="align-middle text-center"><%=listHistoryLoansSearch.get(i).getId() %> </td>
                        <td class="align-middle text-center"><%=listHistoryLoansSearch.get(i).getCode() %></td>
                        <td class="align-middle text-center"><%=listHistoryLoansSearch.get(i).getUcrCard() %></td>
                        <td class="align-middle text-center"><%=listHistoryLoansSearch.get(i).getFullName() %> </td>
                        <td class="align-middle text-center"><%=listHistoryLoansSearch.get(i).getTypeUser() %></td>
                        <td class="align-middle text-center"><%=listHistoryLoansSearch.get(i).getCareer() %></td>
                        <td class="align-middle text-center"><%=listHistoryLoansSearch.get(i).getNameAccesory() %> </td>
                        <td class="align-middle text-center"><%=listHistoryLoansSearch.get(i).getLoanDate() %></td>
                        <td class="align-middle text-center"><%=listHistoryLoansSearch.get(i).getReturnDate() %></td>
                       
                        
                       


                    </tr>
                    <%}%>
                </tbody>
            </table>
            <%                            }
                }
            %>
            <br><br>
            <table  class="table table-bordered">
                <thead>
                    <tr>

                        <th class="text-center">ID</th>
                        <th class="text-center" >Codigo</th>
                        <th class="text-center">Carnet UCR</th>
                        <th class="text-center">Nombre Completo</th>
                        <th class="text-center">tipo de Usuario</th>
                        <th class="text-center">Carrera</th>
                        <th class="text-center">Nombre de Accesorio</th>
                        <th class="text-center">Fecha de Prestamos</th>
                        <th class="text-center">Fecha de Devolución</th>
                       

                    </tr>
                </thead>
                <tbody>
                    <% for (int i = 0; i < listHistoryLoans.size(); i++) {
                    %>
                    <tr>

                        <td class="align-middle text-center"><%=listHistoryLoans.get(i).getId() %></td>
                        <td class="align-middle text-center"><%=listHistoryLoans.get(i).getCode() %> </td>
                        <td class="align-middle text-center"><%=listHistoryLoans.get(i).getUcrCard() %></td>
                        <td class="align-middle text-center"><%=listHistoryLoans.get(i).getFullName() %></td>
                        <td class="align-middle text-center"><%=listHistoryLoans.get(i).getTypeUser() %> </td>
                        <td class="align-middle text-center"><%=listHistoryLoans.get(i).getCareer() %></td>
                        <td class="align-middle text-center"><%=listHistoryLoans.get(i).getNameAccesory() %></td>
                        <td class="align-middle text-center"><%=listHistoryLoans.get(i).getLoanDate() %> </td>
                        <td class="align-middle text-center"><%=listHistoryLoans.get(i).getReturnDate() %></td>
                        
                       
                       


                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>

