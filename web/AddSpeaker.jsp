<%-- 
    Document   : AddSpeaker
    Created on : 25/06/2023, 09:53:16 PM
    Author     : Hp EliteBook
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
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
         .home{
            margin-top: 25px;
            margin-right: 1170px;
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
        .grid-container {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            grid-gap: 20px;
        }
        .column {
            display: flex;
            flex-direction: column;
        }
        .grid-item {
            margin-bottom: 10px;
        }
        .button-container {
            display: flex;
            justify-content: space-between;
        }
    </style>
   <body style="background-color: #e6e6e6;">
    <div class="title">
        <h1>Agregar Parlante</h1>
        <a href="menu.jsp">
            <button class="home"></button>
        </a>
    </div>
    <div class="container" style="font-family: Arial, sans-serif;">
        <br><br><br><br><br><br><br>
        <form action="RegisterValidationSpeaker.jsp" method="post" class="form-control" style="background-color: #e6e6e6;">
            <div class="grid-container">
                <div class="column">
                    <div class="grid-item">
                        <label>Código:</label>
                        <input type="text" name="txtCodeSpeaker" class="form-control" required>
                    </div>
                    
                    <div class="grid-item">
                        <label>Auxiliar audio:</label>
                        <br>
                        <input type="radio" name="txtAuxiliaryAudio" value="1" class="form-check-input" checked>
                        <label>Sí</label>
                        <br>
                        <input type="radio" name="txtAuxiliaryAudio" value="2" class="form-check-input">
                        <label>No</label>
                    </div>
                </div>
                
                <div class="column">
                    <br><br><br>
                    <div class="grid-item">
                        <label>Cable de Electricidad:</label>
                        <br>
                        <input type="radio" name="txtspeakerWire" value="1" class="form-check-input" checked>
                        <label>Sí</label>
                        <br>
                        <input type="radio" name="txtspeakerWire" value="2" class="form-check-input">
                        <label>No</label>
                    </div>
                    <div class="grid-item">
                        <label>Conector a electricidad:</label>
                        <br>
                        <input type="radio" name="txtElectricalConnector" value="1" class="form-check-input" checked>
                        <label>Sí</label>
                        <br>
                        <input type="radio" name="txtElectricalConnector" value="2" class="form-check-input">
                        <label>No</label>
                    </div>
                </div>
            </div>
            <br><br><br><br>
            <div class="button-container">
                <button type="submit" class="btn btn-primary btn-lg" style="background-color: #005da4;">Guardar</button>
                <a href="SearchSpeaker.jsp" class="btn btn-primary btn-lg" style="background-color: #005da4;">Regresar</a>
            </div>
        </form>
    </div>
    <style>
        
    </style>
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
