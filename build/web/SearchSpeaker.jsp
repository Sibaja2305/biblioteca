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
            margin-top: 45px;
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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script type="text/javascript">
    // Asignar el evento onclick al botón de eliminar
    $(document).ready(function() {
        $(".btn-danger").click(function(e) {
            e.preventDefault(); // Detener el envío del formulario
            
            if (confirm("¿Está seguro que desea eliminar?")) {
                $("#deleteForm").submit(); // Enviar el formulario
            }
        });
    });
</script>

    <body style="background-color: #e6e6e6;">
        <div class="title">
            <h1>Buscador de Parlantes</h1>
            <a href="menu.jsp">
                <button class="home">
                </button>
            </a>
        </div>
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
        <div class="container" style="font-family: Arial, sans-serif;">
            <br><br><br><br><br>
            <div>
                <a class="btn btn-success btn-lg" href="AddSpeaker.jsp" style="background-color: #00c0f3;">Nuevo </a>
            </div>
            <form action="SearchSpeaker.jsp" style="display: inline-block; float: right;">
                <div style="display: inline-block;">

                    <input hidden="true" type="text" name="buscando" value="no" class="form-label">

                    <input style="background-color: #00c0f3; margin-bottom: 5px "type="submit" class="btn btn-info btn-sm" value="Vaciar">
                </div>
            </form>
            <form action="SearchSpeaker.jsp" style="display: inline-block; float: right;">
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
                        <th class="text-center" >Cable de electricidad</th>
                        <th class="text-center">Conector a electricidad</th>
                        <th class="text-center">Auxiliar de audio</th>
                        <th class="text-center">Estado</th>
                        <th class="text-center">Préstamos</th>
                        <th class="text-center">Acciones</th>

                    </tr>
                <br>
                </thead>
                <tbody>
                    <% for (int i = 0; i < listSpeakerSearch.size(); i++) {
                            String visibleSearch = "";
                            if (listSpeakerSearch.get(i).getState().equalsIgnoreCase("2")) {
                                visibleSearch = "hidden";

                            }


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
                                    <%=visibleSearch%>
                                    class="btn btn-outline-success btn-sm" 
                                    type="submit"                                                                              
                                    value="seleccionar" >
                            </form>
                        </td>
                        <td class="text-center">
                            <form action="DeleteSpeaker.jsp" id="deleteForm" method="post">
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

                                <th class="text-center">Código</th>
                                <th class="text-center" >Cable de electricidad</th>
                                <th class="text-center">Conector a electricidad</th>
                                <th class="text-center">Auxiliar de audio</th>
                                <th class="text-center">Estado</th>
                                <th class="text-center">Préstamos</th>
                                <th class="text-center">Acciones</th>

                            </tr>
                        </thead>
                        <br>
                        <tbody>
                            <% for (int i = 0; i < listSpeaker.size(); i++) {
                                    String visible = "";
                                    if (listSpeaker.get(i).getState().equalsIgnoreCase("2")) {
                                        visible = "hidden";

                                    }

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
                                            <%=visible%>
                                            class="btn btn-outline-success btn-sm" 
                                            type="submit"                                                                              
                                            value="seleccionar" >
                                    </form>
                                </td>
                                <td class="text-center">
                                    <form action="DeleteSpeaker.jsp" id="deleteForm" method="post">
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