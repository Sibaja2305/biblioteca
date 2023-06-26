<%-- 
    Document   : LoansSpeaker
    Created on : 24/06/2023, 03:17:38 PM
    Author     : Hp EliteBook
--%>

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


        %>
        <div class="container">
            <h1>Buscador de Parlantes</h1>
            <hr>
            <br>
            <a class="btn btn-success btn-lg" href="AddSpeaker.jsp">Nuevo Registro</a>
            <br><br>
            <table  class="table table-bordered">
                <thead>
                    <tr>
                        
                        <th class="text-center">Codigo</th>
                        <th class="text-center" >Cable de electricidad</th>
                        <th class="text-center">Conector a electricidad</th>
                        <th class="text-center">Auxiliar de audio</th>
                        <th class="text-center">Estado</th>
                        <th class="text-center">Acciones</th>
                        <th class="text-center">Prestamos</th>

                    </tr>
                </thead>
                <tbody>
                     <% for (int i = 0; i < listSpeaker.size(); i++) {
                            %>
                            <tr>
                                
                                <td class="text-center"><%=listSpeaker.get(i).getCode()%></td>
                                <td class="text-center"><%=listSpeaker.get(i).getSpeakerWire().equalsIgnoreCase("1")
                                        ? "Si"
                                        : "no" %> </td>
                                <td class="text-center"><%=listSpeaker.get(i).getElectricalConnector().equalsIgnoreCase("1")
                                        ? "Si"
                                        : "no"  %></td>
                                <td class="text-center"><%=listSpeaker.get(i).getAuxiliaryAudio().equalsIgnoreCase("1")
                                        ? "Si"
                                        : "no"  %></td>
                                <td class="text-center"><%=listSpeaker.get(i).getState().equalsIgnoreCase("1")
                                        ? "Disponible"
                                        : "Prestado" %></td>
                                <td class="text-center">
                                    <form action="DeleteSpeaker.jsp">
                                        <input 
                                            hidden="true"
                                            type="text" 
                                            name="deleteSpeaker" 
                                            id="id" 
                                            value="<%=listSpeaker.get(i).getCode()%>">
                                        <input                                        
                                            class="bottom-100" 
                                            type="submit"                                                                              
                                            value="Eliminar" >
                                    </form>
                                        <br>
                                    <form action="UpdateSpeaker.jsp">
                                        <input 
                                            hidden="true"
                                            type="text" 
                                            name="updateSpeaker"                                         
                                            value="<%=listSpeaker.get(i).toString()%>">
                                        <input                                        
                                            class="bottom-100" 
                                            type="submit"                                                                              
                                            value="Editar" >
                                    </form>
                                       
                                </td>
                                <td>
                                     <form action="SpeakerLoan.jsp">
                                        <input 
                                            hidden="true"
                                            type="text" 
                                            name="selectSpeaker"                                         
                                            value="<%=listSpeaker.get(i).toString()%>">
                                        <input                                        
                                            class="bottom-100" 
                                            type="submit"                                                                              
                                            value="seleccionar" >
                                    </form>
                                </td>
                                <td></td>
                            </tr>
                            <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>