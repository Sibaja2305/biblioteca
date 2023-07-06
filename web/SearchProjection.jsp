<%-- 
    Document   : SearchProjection
    Created on : 26/06/2023, 10:24:13 PM
    Author     : Hp EliteBook
--%>
<%@page import="clasess.Ordering"%>
<%@page import="clases.ProjectionKit"%>

<%@page import="java.util.ArrayList"%>
<%@page import="databasemysql.ConnectionMysql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <meta charset="UTF-8">
        <title>JSP Page</title>
    </head>
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
        .home{
            margin-top: 35px;
            margin-right: 1400px;
            padding: 25px 25px;
            background-color: #e6e6e6;
            border: none;
            border-radius: 4px;
            background-image: url('https://cdn1.iconfinder.com/data/icons/systemui/21/home_door-512.png');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            position: relative;
            font-size: 12px;
        }
        .home:hover::before{
            content: 'Menu';
            position: absolute;
            top: 45px;
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
            <h1>Buscador de Kit de Proyectores</h1>
            <a href="menu.jsp">
                <button class="home">
                </button>
            </a>
        </div>
        <%

            ConnectionMysql mysql = new ConnectionMysql("portal_sede_sur");
            Ordering or = new Ordering();
            ArrayList<ProjectionKit> listProjectionKit = mysql.getProjectionKit();
            ArrayList<ProjectionKit> listProjectionSearch = new ArrayList();
            String looking = "";
            String codeSearch;
            looking = request.getParameter("buscando");
            codeSearch = request.getParameter("txtSearch");
            if (codeSearch != null) {
               
                int x = or.order(codeSearch, listProjectionKit);
                 System.out.print(codeSearch);
                if (x >= 0) {
                    
                    listProjectionSearch = mysql.getProjectionKit(codeSearch);

                } else {
                    System.out.print(codeSearch);
                    //out.println("<script>alert('Codigo no encontrado'); window.location.href='SearchProjection.jsp';</script>");

                }

            }

        %>
        <div class="container" style="  font-family: Arial, sans-serif;">
            <br><br><br><br><br><br>
            <div>
                <a class="btn btn-success btn-lg" href="AddProjectionKit.jsp" style="background-color: #00c0f3;">Nuevo </a>
            </div>
            <form action="SearchProjection.jsp" style="display: inline-block; float: right;">
                <div style="display: inline-block;">

                    <input hidden="true" type="text" name="buscando" value="no" class="form-label">
                    <input hidden="true" type="text" name="txtSearch" value="" class="form-label">
                    <input style="background-color: #00c0f3; margin-bottom: 5px"type="submit" class="btn btn-info btn-sm" value="Vaciar">
                </div>
            </form>
            <form action="SearchProjection.jsp" style="display: inline-block; float: right;">
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
                        <th class="text-center" >Estuche de Proyector</th>
                        <th class="text-center">Cable de Electricidad</th>
                        <th class="text-center">Cable VGA</th>
                        <th class="text-center">Cable HDMI</th>
                        <th class="text-center">Control de proyector</th>
                        <th class="text-center">Baterías</th>
                        <th class="text-center">Extensión</th>
                        <th class="text-center">Regleta</th>
                        <th class="text-center">Caja plástica</th>
                        <th class="text-center">Préstamos</th>
                        <th class="text-center">Acciones</th>

                    </tr>
                </thead>
                <tbody>
                    <% for (int i = 0; i < listProjectionSearch.size(); i++) {
                            String visibleSearch = "";
                            if (listProjectionSearch.get(i).getState().equalsIgnoreCase("2")) {
                                visibleSearch = "hidden";

                            }
                    %>
                    <tr>

                        <td class="align-middle text-center"><%=listProjectionSearch.get(i).getCode()%></td>
                        <td class="align-middle text-center"><%=listProjectionSearch.get(i).getProjectorCase().equalsIgnoreCase("1")
                                ? "Si"
                                : "no"%> </td>
                        <td class="align-middle text-center"><%=listProjectionSearch.get(i).getElectricityWire().equalsIgnoreCase("1")
                                ? "Si"
                                : "no"%></td>
                        <td class="align-middle text-center"><%=listProjectionSearch.get(i).getVGAConnector().equalsIgnoreCase("1")
                                ? "Si"
                                : "no"%></td>
                        <td class="align-middle text-center"><%=listProjectionSearch.get(i).getHDMIConnector().equalsIgnoreCase("1")
                                ? "Si"
                                : "no"%> </td>
                        <td class="align-middle text-center"><%=listProjectionSearch.get(i).getProjectorControl().equalsIgnoreCase("1")
                                ? "Si"
                                : "no"%></td>
                        <td class="align-middle text-center"><%=listProjectionSearch.get(i).getBatteries().equalsIgnoreCase("1")
                                ? "Si"
                                : "no"%></td>
                        <td class="align-middle text-center"><%=listProjectionSearch.get(i).getExtension().equalsIgnoreCase("1")
                                ? "Si"
                                : "no"%> </td>
                        <td class="align-middle text-center"><%=listProjectionSearch.get(i).getPowerStrip().equalsIgnoreCase("1")
                                ? "Si"
                                : "no"%></td>
                        <td class="align-middle text-center"><%=listProjectionSearch.get(i).getPlasticBox().equalsIgnoreCase("1")
                                ? "Si"
                                : "no"%></td>
                        <td class="align-middle text-center"><%=listProjectionSearch.get(i).getState().equalsIgnoreCase("1")
                                ? "Disponible"
                                : "Prestado"%></td>
                        <td class="align-middle text-center ">
                            <form action="ProjectionKitLoan.jsp">
                                <input 
                                    hidden="true"
                                    type="text" 
                                    name="selectProjectionKit"                                         
                                    value="<%=listProjectionSearch.get(i).getCode()%>">
                                <input   
                                    <%=visibleSearch%>
                                    class="btn btn-outline-success btn-sm" 
                                    type="submit"                                                                              
                                    value="seleccionar" >
                            </form>
                        </td>
                        <td class="text-center">
                            <form action="DeleteProjectionKit.jsp" id="deleteForm" method="post">
                                <input 
                                    hidden="true"
                                    type="text" 
                                    name="deleteProjectionKit" 
                                    id="id" 
                                    value="<%=listProjectionSearch.get(i).getCode()%>">
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
                        <th class="text-center" >Estuche de Proyector</th>
                        <th class="text-center">Cable de Electricidad</th>
                        <th class="text-center">Cable VGA</th>
                        <th class="text-center">Cable HDMI</th>
                        <th class="text-center">Control de proyector</th>
                        <th class="text-center">Baterías</th>
                        <th class="text-center">Extensión</th>
                        <th class="text-center">Regleta</th>
                        <th class="text-center">Caja plástica</th>
                        <th class="text-center">Préstamos</th>
                        <th class="text-center">Acciones</th>

                    </tr>
                </thead>
                <tbody>
                    <% for (int i = 0; i < listProjectionKit.size(); i++) {
                            String visible = "";
                            if (listProjectionKit.get(i).getState().equalsIgnoreCase("2")) {
                                visible = "hidden";

                            }
                    %>
                    <tr>

                        <td class="align-middle text-center"><%=listProjectionKit.get(i).getCode()%></td>
                        <td class="align-middle text-center"><%=listProjectionKit.get(i).getProjectorCase().equalsIgnoreCase("1")
                                ? "Si"
                                : "no"%> </td>
                        <td class="align-middle text-center"><%=listProjectionKit.get(i).getElectricityWire().equalsIgnoreCase("1")
                                ? "Si"
                                : "no"%></td>
                        <td class="align-middle text-center"><%=listProjectionKit.get(i).getVGAConnector().equalsIgnoreCase("1")
                                ? "Si"
                                : "no"%></td>
                        <td class="align-middle text-center"><%=listProjectionKit.get(i).getHDMIConnector().equalsIgnoreCase("1")
                                ? "Si"
                                : "no"%> </td>
                        <td class="align-middle text-center"><%=listProjectionKit.get(i).getProjectorControl().equalsIgnoreCase("1")
                                ? "Si"
                                : "no"%></td>
                        <td class="align-middle text-center"><%=listProjectionKit.get(i).getBatteries().equalsIgnoreCase("1")
                                ? "Si"
                                : "no"%></td>
                        <td class="align-middle text-center"><%=listProjectionKit.get(i).getExtension().equalsIgnoreCase("1")
                                ? "Si"
                                : "no"%> </td>
                        <td class="align-middle text-center"><%=listProjectionKit.get(i).getPowerStrip().equalsIgnoreCase("1")
                                ? "Si"
                                : "no"%></td>
                        <td class="align-middle text-center"><%=listProjectionKit.get(i).getPlasticBox().equalsIgnoreCase("1")
                                ? "Si"
                                : "no"%></td>
                        <td class="align-middle text-center"><%=listProjectionKit.get(i).getState().equalsIgnoreCase("1")
                                ? "Disponible"
                                : "Prestado"%></td>
                        <td class="align-middle text-center ">
                            <form action="ProjectionKitLoan.jsp">
                                <input 
                                    hidden="true"
                                    type="text" 
                                    name="selectProjectionKit"                                         
                                    value="<%=listProjectionKit.get(i).getCode()%>">
                                <input  
                                    <%=visible%>
                                    class="btn btn-outline-success btn-sm" 
                                    type="submit"                                                                              
                                    value="seleccionar" >
                            </form>
                        </td>
                        <td class="text-center">
                            <form action="DeleteProjectionKit.jsp" id="deleteForm" method="post">
                                <input 
                                    hidden="true"
                                    type="text" 
                                    name="deleteProjectionKit" 
                                    id="id" 
                                    value="<%=listProjectionKit.get(i).getCode()%>">
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

