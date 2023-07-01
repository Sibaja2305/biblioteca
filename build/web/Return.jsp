<%-- 
    Document   : SearchProjection
    Created on : 26/06/2023, 10:26:23 PM
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
            ArrayList<LogBookLoans> listLogBookLoans = mysql.getLogBookLoans();
            ArrayList<LogBookLoans> listLogBookSearch = new ArrayList();
            String looking = "";
            String codeSearch = "";
            looking = request.getParameter("buscando");
            codeSearch = request.getParameter("txtSearch");

            if (codeSearch != null) {

                //listLogBookSearch = mysql.getProjectionKit(codeSearch);
            }
          
        %>
        <div class="container">
            <h1>Devoluciones</h1>
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
                        <th class="text-center">Acciones</th>



                    </tr>
                </thead>
                <tbody>
                    <% for (int i = 0; i < listLogBookSearch.size(); i++) {
                    %>
                    <tr>


                        <td class="align-middle text-center"><%=listLogBookSearch.get(i).getId()%> </td>
                        <td class="align-middle text-center"><%=listLogBookSearch.get(i).getCode()%></td>
                        <td class="align-middle text-center"><%=listLogBookSearch.get(i).getUcrCard()%></td>
                        <td class="align-middle text-center"><%=listLogBookSearch.get(i).getFullName()%> </td>
                        <td class="align-middle text-center"><%=listLogBookSearch.get(i).getTypeUser()%></td>
                        <td class="align-middle text-center"><%=listLogBookSearch.get(i).getCareer()%></td>
                        <td class="align-middle text-center"><%=listLogBookSearch.get(i).getNameAccesory()%> </td>
                        <td class="align-middle text-center"><%=listLogBookSearch.get(i).getLoanDate()%></td>
                        <td class="align-middle text-center"><%=listLogBookSearch.get(i).getReturnDate()%></td>

                        <td class="align-middle text-center ">
                            <form action="ReturnRegisterValidation.jsp">
                                <input 
                                    hidden="true"
                                    type="text" 
                                    name="select"                                         
                                    value="<%=listLogBookSearch.get(i).getCode()%>">
                                <input                                        
                                    class="btn btn-outline-success btn-sm" 
                                    type="submit"                                                                              
                                    value="selectReturn" >
                            </form>
                        </td>



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
                        <th class="text-center">Acciones</th>

                    </tr>
                </thead>
                <tbody>
                    <% for (int i = 0; i < listLogBookLoans.size(); i++) {
                    %>
                    <tr>

                        <td class="align-middle text-center"><%=listLogBookLoans.get(i).getId()%></td>
                        <td class="align-middle text-center"><%=listLogBookLoans.get(i).getCode()%> </td>
                        <td class="align-middle text-center"><%=listLogBookLoans.get(i).getUcrCard()%></td>
                        <td class="align-middle text-center"><%=listLogBookLoans.get(i).getFullName()%></td>
                        <td class="align-middle text-center"><%=listLogBookLoans.get(i).getTypeUser()%> </td>
                        <td class="align-middle text-center"><%=listLogBookLoans.get(i).getCareer()%></td>
                        <td class="align-middle text-center"><%=listLogBookLoans.get(i).getNameAccesory()%></td>
                        <td class="align-middle text-center"><%=listLogBookLoans.get(i).getLoanDate()%> </td>
                        <td class="align-middle text-center"><%=listLogBookLoans.get(i).getReturnDate()%></td>

                        <td class="align-middle text-center ">
                            <form action="RegisterValidationHistory.jsp" method="post">
                                <input type="hidden" name="category" value="<%= listLogBookLoans.get(i).getCategory()%>" />
                                <input type="hidden" name="id" value="<%= listLogBookLoans.get(i).getId()%>" />
                                <input type="hidden" name="code" value="<%= listLogBookLoans.get(i).getCode()%>" />
                                <input type="hidden" name="identification" value="<%= listLogBookLoans.get(i).getUcrCard()%>" />
                                <input type="hidden" name="fullName" value="<%= listLogBookLoans.get(i).getFullName()%>" />
                                <input type="hidden" name="typeUser" value="<%= listLogBookLoans.get(i).getTypeUser()%>" />
                                <input type="hidden" name="career" value="<%= listLogBookLoans.get(i).getCareer()%>" />
                                <input type="hidden" name="nameAccesory" value="<%= listLogBookLoans.get(i).getNameAccesory()%>" />
                                <input type="hidden" name="loanDate" value="<%= listLogBookLoans.get(i).getLoanDate()%>" />
                                <input type="hidden" name="returnDate" value="<%= listLogBookLoans.get(i).getReturnDate()%>" />
                                <input                                        
                                    class="btn btn-outline-success btn-sm" 
                                    type="submit"                                                                              
                                    value="Devolución" >
                            </form>
                            </form>
                        </td>



                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>

