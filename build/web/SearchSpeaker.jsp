<%-- 
    Document   : LoansSpeaker
    Created on : 24/06/2023, 03:17:38 PM
    Author     : Hp EliteBook
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.ArrayList"%>
<%@page import="clases.Speaker"%>
<%@page import="databasemysql.ConnectionMysql"%>
<%@page import="java.util.List"%>
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
            ArrayList<Speaker> listSpeaker = mysql.getSpeaker();
            ArrayList<Speaker> listSpeakerSearch = new ArrayList();

            String looking = "";
            String codeSearch = "";
            looking = request.getParameter("buscando");
            codeSearch = request.getParameter("txtSearch");
            
            if (codeSearch != null) {
              
                listSpeakerSearch = mysql.getSpeaker(codeSearch);
            }


        %>
        <div class="container">
            <h1>Buscador de Parlantes</h1>
            <hr>
            <br>
            <div >
                <a class="btn btn-info btn-lg" href="AddSpeaker.jsp">Nuevo </a>
            </div>
             <form action="SearchSpeaker.jsp" style="display: inline-block; float: right;">
               <div style="display: inline-block;">
                    
                    <input hidden="true" type="text" name="buscando" value="no" class="form-label">

                    <input style="margin-bottom: 5px "type="submit" class="btn btn-info btn-sm" value="Vaciar">
               </div>
            </form>
            <form action="SearchSpeaker.jsp" style="display: inline-block; float: right;">
               <div style="display: inline-block;">
                    <input type="text" name="txtSearch" class="form-label">
                    <input hidden="true" type="text" name="buscando" value="si" class="form-label">
                    <input style="margin-right: 4px;" type="submit" class="btn btn-info btn-sm" value="Buscar">

               </div>
            </form>
           

            <% if (looking != null ) {
       
                    if (looking.equalsIgnoreCase("si") && !codeSearch.equalsIgnoreCase("")) {


            %>
            <table  class="table table-bordered">
                <thead>
                    <tr>

                        <th class="text-center">Codigo</th>
                        <th class="text-center" >Cable de electricidad</th>
                        <th class="text-center">Conector a electricidad</th>
                        <th class="text-center">Auxiliar de audio</th>
                        <th class="text-center">Estado</th>
                        <th class="text-center">Prestamos</th>
                        <th class="text-center">Acciones</th>

                    </tr>
                <br>
                </thead>
                <tbody>
                    <% for (int i = 0; i < listSpeakerSearch.size(); i++) {
                    %>
                    <tr>

                        <td class="align-middle text-center"><%=listSpeakerSearch.get(i).getCode()%></td>
                        <td class="align-middle text-center"><%=listSpeakerSearch.get(i).getSpeakerWire().equalsIgnoreCase("1")
                                ? "Si"
                                : "no"%> </td>
                        <td class="align-middle text-center"><%=listSpeakerSearch.get(i).getElectricalConnector().equalsIgnoreCase("1")
                                ? "Si"
                                : "no"%></td>
                        <td class="align-middle text-center"><%=listSpeakerSearch.get(i).getAuxiliaryAudio().equalsIgnoreCase("1")
                                ? "Si"
                                : "no"%></td>
                        <td class="align-middle text-center"><%=listSpeakerSearch.get(i).getState().equalsIgnoreCase("1")
                                ? "Disponible"
                                : "Prestado"%></td>
                        <td class="align-middle text-center ">
                            <form action="SpeakerLoan.jsp">
                                <input 
                                    hidden="true"
                                    type="text" 
                                    name="selectSpeaker"                                         
                                    value="<%=listSpeakerSearch.get(i).getCode()%>">
                                <input                                        
                                    class="btn btn-outline-success btn-sm" 
                                    type="submit"                                                                              
                                    value="seleccionar" >
                            </form>
                        </td>
                        <td class="text-center">
                            <form action="DeleteSpeaker.jsp">
                                <input 
                                    hidden="true"
                                    type="text" 
                                    name="deleteSpeaker" 
                                    id="id" 
                                    value="<%=listSpeakerSearch.get(i).getCode()%>">
                                <input                                        
                                    class="btn btn-danger btn-sm" 
                                    type="submit"                                                                              
                                    value="Eliminar" >
                            </form>



                        </td>


                    </tr>
                    <%}%>
                </tbody>
                <table>
                    <%                            }
                        }
                    %>
                    <br>
                    <table  class="table table-bordered">
                        <thead>
                            <tr>

                                <th class="text-center">Codigo</th>
                                <th class="text-center" >Cable de electricidad</th>
                                <th class="text-center">Conector a electricidad</th>
                                <th class="text-center">Auxiliar de audio</th>
                                <th class="text-center">Estado</th>
                                <th class="text-center">Prestamos</th>
                                <th class="text-center">Acciones</th>

                            </tr>
                        </thead>
                        <br>
                        <tbody>
                            <% for (int i = 0; i < listSpeaker.size(); i++) {
                            %>
                            <tr>

                                <td class="align-middle text-center"><%=listSpeaker.get(i).getCode()%></td>
                                <td class="align-middle text-center"><%=listSpeaker.get(i).getSpeakerWire().equalsIgnoreCase("1")
                                        ? "Si"
                                        : "no"%> </td>
                                <td class="align-middle text-center"><%=listSpeaker.get(i).getElectricalConnector().equalsIgnoreCase("1")
                                        ? "Si"
                                        : "no"%></td>
                                <td class="align-middle text-center"><%=listSpeaker.get(i).getAuxiliaryAudio().equalsIgnoreCase("1")
                                        ? "Si"
                                        : "no"%></td>
                                <td class="align-middle text-center"><%=listSpeaker.get(i).getState().equalsIgnoreCase("1")
                                        ? "Disponible"
                                        : "Prestado"%></td>
                                <td class="align-middle text-center ">
                                    <form action="SpeakerLoan.jsp">
                                        <input 
                                            hidden="true"
                                            type="text" 
                                            name="selectSpeaker"                                         
                                            value="<%=listSpeaker.get(i).getCode()%>">
                                        <input                                        
                                            class="btn btn-outline-success btn-sm" 
                                            type="submit"                                                                              
                                            value="seleccionar" >
                                    </form>
                                </td>
                                <td class="text-center">
                                    <form action="DeleteSpeaker.jsp">
                                        <input 
                                            hidden="true"
                                            type="text" 
                                            name="deleteSpeaker" 
                                            id="id" 
                                            value="<%=listSpeaker.get(i).getCode()%>">
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