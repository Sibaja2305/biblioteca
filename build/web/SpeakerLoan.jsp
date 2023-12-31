<%-- 
    Document   : speakerAccessorie
    Created on : 24/06/2023, 03:59:50 PM
    Author     : Hp EliteBook
--%>

<%@page import="clases.Speaker"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Prestamos de parlantes</title>
        <link href="bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="estilos.css" rel="stylesheet" type="text/css"/>
        <meta charset="UTF-8">
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
            <h1>Prestamos de Parlante</h1>
        </div>
        <%

            String speaker = request.getParameter("selectSpeaker").trim();


        %>

        <div class="container" >
            <form action="LoansAccessories.jsp" style=" font-family: Arial, sans-serif;">
                <br><br><br><br>
                <label class="form-control-lg">Código</label>
                <br>
                <input disabled="true" type="text" class="form-label" style="font-size:16px;" name="idsd" required value="<%=speaker%>">

                <div class="form-control-lg">

                    <input hidden="true" type="text" class="form-label" name="code" required value="<%=speaker%>">
                </div>

                <div class="form-control-lg">
                    <label class="text">Cable de Electricidad del Parlante</label>
                    <br>
                    <label>
                        <input type="radio" name="speakerWire" value="1" class="form-check-input" checked>
                        Sí
                        <br>
                        <input type="radio" name="speakerWire" value="2" class="form-check-input">
                        No

                    </label>
                </div>

                <div class="form-control-lg">
                    <label class="text">Conector a Electricidad del Parlante</label>
                    <br>
                    <label>
                        <input type="radio" name="electricalConnector" value="1" class="form-check-input" checked>
                        Sí
                        <br>
                        <input type="radio" name="electricalConnector" value="2" class="form-check-input">
                        No
                    </label>
                </div>

                <div class="form-control-lg">
                    <label class="text">  Auxiliar de Audio del Parlante     </label>
                    <br>
                    <label>
                        <input type="radio" name="auxiliaryAudio" value="1" class="form-check-input" checked>
                        Sí
                        <br>
                        <input type="radio" name="auxiliaryAudio" value="2" class="form-check-input">
                        No
                    </label>
                </div>
                <input hidden="true" type="text" name="category" value="speaker">
                <br>
                <div class="form-control-lg">
                    <button type="submit" class="btn btn-primary btn-lg" style="background-color: #005da4">Registrar</button>
                    <a href="SearchSpeaker.jsp" class="btn btn-primary btn-lg" style="background-color: #005da4">Regresar</a>
                </div>


            </form>
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
