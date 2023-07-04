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
   
    <style>
        .title{
            width: 100%;
            height: 120px;
            background-color: #00c0f3;
            position: fixed;
            top: 0;
            left: 0;
            color: #fff;
            font-size: 20px;
            text-align: center;
            font-family: Arial, sans-serif;
        }
        .home{
            margin-top: 65px;
            margin-left: 1200px;
            padding: 25px 25px;
            background-color: #e6e6e6;
            border: none;
            border-radius: 4px;
            background-image: url('https://cdn1.iconfinder.com/data/icons/jumpicon-basic-ui-line-1/32/-_Home-House--256.png');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            position: relative;
            font-size: 12px;
        }
        .home:hover::before{
            content: 'Menu';
            position: absolute;
            top: 50px;
            left: 0;
            width: 100%;
            text-align: center;
            color: black;
            font-weight: bold;
            font-family: Arial, sans-serif;

        }

    </style>
    <body style="background-color: #e6e6e6;">
        <div class="title">
            <h1>Buscador de Computadoras</h1>
            <a href="menu.jsp">
                <button class="home">
                </button>
            </a>
        </div>
        <%

            ConnectionMysql mysql = new ConnectionMysql("portal_sede_sur");
            ArrayList<Computer> listComputer = mysql.getComputer();
            ArrayList<Computer> listComputerSearch = new ArrayList();
            String looking = "";
            String codeSearch = "";
            looking = request.getParameter("buscando");
            codeSearch = request.getParameter("txtSearch");

            if (codeSearch != null) {

                listComputerSearch = mysql.getComputer(codeSearch);
            }

        %>
        <div class="container" style="font-family: Arial, sans-serif;">
            <br><br><br><br><br><br>
            <div >
                <a class="btn btn-success btn-lg" href="AddComputer.jsp" style="background-color: #00c0f3;">Nuevo </a>
            </div>
            <form action="SearchComputer.jsp" style="display: inline-block; float: right;">
                <div style="display: inline-block;">

                    <input hidden="true" type="text" name="buscando" value="no" class="form-label">

                    <input style="background-color: #00c0f3; margin-bottom: 5px "type="submit" class="btn btn-info btn-sm" value="Vaciar">
                </div>
            </form>
            <form action="SearchComputer.jsp" style="display: inline-block; float: right;">
                <div style="display: inline-block;">
                    <input type="text" name="txtSearch" class="form-label">
                    <input hidden="true" type="text" name="buscando" value="si" class="form-label">
                    <input style="background-color: #00c0f3; margin-right: 4px;" type="submit" class="btn btn-info btn-sm" value="Buscar">

                </div>
            </form>
            <% if (looking != null) {

                    if (looking.equalsIgnoreCase("si") && !codeSearch.equalsIgnoreCase("")) {


            %>
            <table  class="table table-bordered">
                <thead>
                    <tr>

                        <th class="text-center">Código</th>
                        <th class="text-center" >Cargador</th>
                        <th class="text-center">Estuche Suave</th>
                        <th class="text-center">Estuche Estilo Maletín</th>
                        <th class="text-center">Estado</th>
                        <th class="text-center">Préstamos</th>
                        <th class="text-center">Acciones</th>

                    </tr>
                </thead>
                <tbody>
                    <% for (int i = 0; i < listComputerSearch.size(); i++) {
                            String visibleSearch = "";
                            if (listComputerSearch.get(i).getState().equalsIgnoreCase("2")) {
                                visibleSearch = "hidden";

                            }
                    %>
                    <tr>

                        <td class="align-middle text-center"><%=listComputerSearch.get(i).getCode()%></td>
                        <td class="align-middle text-center"><%=listComputerSearch.get(i).getCharger().equalsIgnoreCase("1")
                                ? "Si"
                                : "no"%> </td>
                        <td class="align-middle text-center"><%=listComputerSearch.get(i).getSoftCase().equalsIgnoreCase("1")
                                ? "Si"
                                : "no"%></td>
                        <td class="align-middle text-center"><%=listComputerSearch.get(i).getBriefcase().equalsIgnoreCase("1")
                                ? "Si"
                                : "no"%></td>
                        <td class="align-middle text-center"><%=listComputerSearch.get(i).getState().equalsIgnoreCase("1")
                                ? "Disponible"
                                : "Prestado"%></td>
                        <td class="align-middle text-center ">
                            <form action="ComputerLoan.jsp">
                                <input 
                                    hidden="true"
                                    type="text" 
                                    name="selectComputer"                                         
                                    value="<%=listComputerSearch.get(i).getCode()%>">
                                <input 
                                    <%=visibleSearch%>
                                    class="btn btn-outline-success btn-sm" 
                                    type="submit"                                                                              
                                    value="seleccionar" >
                            </form>
                        </td>
                        <td class="text-center">
                            <form action="DeleteComputer.jsp" id="deleteForm" method="post">
                                <input 
                                    hidden="true"
                                    type="text" 
                                    name="deleteComputer" 
                                    id="id" 
                                    value="<%=listComputerSearch.get(i).getCode()%>">
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
            <%                            }
                }
            %>
            <br><br>
            <table  class="table table-bordered">
                <thead>
                    <tr>

                        <th class="text-center">Código</th>
                        <th class="text-center" >Cargador</th>
                        <th class="text-center">Estuche Suave</th>
                        <th class="text-center">Estuche Estilo Maletín</th>
                        <th class="text-center">Estado</th>
                        <th class="text-center">Préstamos</th>
                        <th class="text-center">Acciones</th>

                    </tr>
                </thead>
                <tbody>
                    <% for (int i = 0; i < listComputer.size(); i++) {
                            String visible = "";
                            if (listComputer.get(i).getState().equalsIgnoreCase("2")) {
                                visible = "hidden";
                            }
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
                                    <%=visible%>
                                    class="btn btn-outline-success btn-sm" 
                                    type="submit"                                                                              
                                    value="seleccionar" >
                            </form>
                        </td>
                        <td class="text-center">
                            <form action="DeleteComputer.jsp" id="deleteForm" method="post">
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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script type="text/javascript">
    // Asignar el evento onclick al botón de eliminar
    $(document).ready(function() {
        $("btn-danger").click(function(e) {
            e.preventDefault(); // Detener el envío del formulario
            
            if (confirm("¿Está seguro que desea eliminar?")) {
                $("#deleteForm").submit(); // Enviar el formulario
            }
        });
    });
</script>
</html>
