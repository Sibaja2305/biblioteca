<%-- 
    Document   : SearchProjection
    Created on : 26/06/2023, 10:26:23 PM
    Author     : Hp EliteBook
--%>
<%@page import="clasess.Ordering"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.Comparator"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.sql.Array"%>
<%@page import="clases.LogBookLoans"%>


<%@page import="java.util.ArrayList"%>
<%@page import="databasemysql.ConnectionMysql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <style>
        .title{
            width: 100%;
            height: 80px;
            background-color: #00c0f3;
            position: absolute;
            color: #fff;
            font-size: 20px;
            text-align: center;
            font-family: Arial, sans-serif;
        }
    </style>
    <body style="background-color: #e6e6e6;">
        <div class="title">
            <h1>Devoluciones</h1>
        </div>
        <%

            ConnectionMysql mysql = new ConnectionMysql("portal_sede_sur");
            Ordering or=new Ordering();
            ArrayList<LogBookLoans> listLogBookLoans = mysql.getLogBookLoans();
            ArrayList<LogBookLoans> listLogBookSearch =new ArrayList<>();
            String looking = "";
            String nameSearch = "";
            looking = request.getParameter("buscando");
            nameSearch = request.getParameter("txtSearch");
           

        %>
        <div class="container">
            <br><br><br><br><br>

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

                    if (looking.equalsIgnoreCase("si") && !nameSearch.equalsIgnoreCase("")) {


            %>
            <table  class="table table-bordered">
                <thead>
                    <tr>

                        <th class="text-center">ID</th>
                        <th class="text-center" >Código</th>
                        <th class="text-center">Carnet UCR</th>
                        <th class="text-center">Nombre Completo</th>
                        <th class="text-center">tipo de Usuario</th>
                        <th class="text-center">Carrera</th>
                        <th class="text-center">Nombre de Accesorio</th>
                        <th class="text-center">Fecha de Préstamos</th>
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
                        <th class="text-center" >Código</th>
                        <th class="text-center">Carnet UCR</th>
                        <th class="text-center">Nombre Completo</th>
                        <th class="text-center">tipo de Usuario</th>
                        <th class="text-center">Carrera</th>
                        <th class="text-center">Nombre de Accesorio</th>
                        <th class="text-center">Fecha de Préstamos</th>
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
     <script type="text/javascript">
            // Inactivity time in minutes (5 minutes in this example)
            var inactivityTime = 10;

            // Variable to store the timer
            var inactivityTimer;

            // Function to restart the timer
            function restartTimer() {
                clearTimeout(inactivityTimer);
                inactivityTimer = setTimeout(redirect, inactivityTime * 60 * 1000);
            }

            // Function to redirect the user
            function redirect() {
                location.href = "cerrarSesion.jsp";
            }

            // Restart timer on activity (mousemove or keydown)
            document.addEventListener("mousemove", restartTimer);
            document.addEventListener("keydown", restartTimer);

            // Start timer on page load
            window.onload = function () {
                inactivityTimer = setTimeout(redirect, inactivityTime * 60 * 1000);
              };
  </script>
</html>

