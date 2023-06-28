<%-- 
    Document   : SearchProjection
    Created on : 26/06/2023, 10:24:13 PM
    Author     : Hp EliteBook
--%>
<%@page import="clases.ProjectionKit"%>

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
            ArrayList<ProjectionKit> listProjectionKit = mysql.getProjectionKit();
            ArrayList<ProjectionKit> listProjectionSearch = new ArrayList();
            String looking = "";
            String codeSearch = "";
            looking = request.getParameter("buscando");
            codeSearch = request.getParameter("txtSearch");

            if (codeSearch != null) {
              
                listProjectionSearch = mysql.getProjectionKit(codeSearch);
            }

        %>
        <div class="container">
            <h1>Buscador de Kit de Proyectores</h1>
            <hr>
            <br>
            <div >
                <a class="btn btn-success btn-lg" href="AddProjectionKit.jsp">Nuevo </a>
            </div>
            <form action="SearchProjection.jsp" style="display: inline-block; float: right;">
                <div style="display: inline-block;">

                    <input hidden="true" type="text" name="buscando" value="no" class="form-label">

                    <input style="margin-bottom: 5px "type="submit" class="btn btn-info btn-sm" value="Vaciar">
                </div>
            </form>
            <form action="SearchProjection.jsp" style="display: inline-block; float: right;">
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
                        <th class="text-center">Prestamos</th>
                        <th class="text-center">Acciones</th>

                    </tr>
                </thead>
                <tbody>
                    <% for (int i = 0; i < listProjectionSearch.size(); i++) {
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
                                    class="btn btn-outline-success btn-sm" 
                                    type="submit"                                                                              
                                    value="seleccionar" >
                            </form>
                        </td>
                        <td class="text-center">
                            <form action="DeleteProjectionKit.jsp">
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
                        <th class="text-center">Prestamos</th>
                        <th class="text-center">Acciones</th>

                    </tr>
                </thead>
                <tbody>
                    <% for (int i = 0; i < listProjectionKit.size(); i++) {
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
                                    class="btn btn-outline-success btn-sm" 
                                    type="submit"                                                                              
                                    value="seleccionar" >
                            </form>
                        </td>
                        <td class="text-center">
                            <form action="DeleteProjectionKit.jsp">
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

