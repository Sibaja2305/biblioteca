<%-- 
    Document   : AddSpeaker
    Created on : 25/06/2023, 09:53:16 PM
    Author     : Hp EliteBook
--%>

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
            <h1>Agregar Parlante</h1>
              <a href="menu.jsp">
                <button class="home">
                </button>
            </a>
        </div>
        <div class="container" style="font-family: Arial, sans-serif;">
            <br><br><br><br><br><br>
            <form action="RegisterValidationSpeaker.jsp" method="post" class="form-control" style="background-color: #e6e6e6;">
                Código:
                <input type="text" name="txtCodeSpeaker" class="form-control" required>
                <br>
                Cable de Electricidad:
                <br>
                <label>

                    <input type="radio" name="txtspeakerWire" value="1" class="form-check-input" checked >
                    Sí
                    <br>
                    <input type="radio" name="txtspeakerWire" value="2" class="form-check-input" >
                    No
                </label>
                <br>
                Conector a electricidad:
                <br>
                <label>

                    <input type="radio" name="txtElectricalConnector" value="1" class="form-check-input" checked >
                    Sí
                    <br>
                    <input type="radio" name="txtElectricalConnector" value="2" class="form-check-input" >
                    No
                </label>
                <br>
                Auxiliar audio:
                <br>
                <label>

                    <input type="radio" name="txtAuxiliaryAudio" value="1" class="form-check-input" checked>
                    Sí
                    <br>
                    <input type="radio" name="txtAuxiliaryAudio" value="2" class="form-check-input" >
                    No
                </label>
                <br><br>
                <button type="submit" class="btn btn-primary btn-lg" style="background-color: #005da4;">Guardar</button>
                <a href="SearchSpeaker.jsp" class="btn btn-primary btn-lg" style="background-color: #005da4;">Regresar</a>
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
