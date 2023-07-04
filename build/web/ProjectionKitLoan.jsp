<%-- 
    Document   : ComputerLoan
    Created on : 24/06/2023, 07:14:48 PM
    Author     : Hp EliteBook
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Prestamos de Proyectores</title>

        <link rel="stylesheet" href="estilos.css"/>
        <style>
            .button-group label {
                display: block;
                margin-bottom: 10px;
            }
            .loanproyection{
                margin-left: 90px;
                margin-bottom: 20px;
            }
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
    </head>
    <body style="background-color: #e6e6e6;">
        <div class="title">
            <h1>Prestamos de Kit de Proyectores</h1>
        </div>
        <%

            String projection = request.getParameter("selectProjectionKit").trim();


        %>

        <div class="container">
            <form action="LoansAccessories.jsp" class="loanproyection" style="font-family: Arial, sans-serif;">
                <br><br><br><br>
                <div class="form-control-lg"> 
                    <label class="text">Código:</label>
                    <br>
                    <input disabled="true" type="text" class="form-label" style="font-size:16px;" name="idsd" required value="<%=projection%>">
                    <input hidden="true" type="text" class="form-label" name="code" required value="<%=projection%>">
                </div>
                <br><br>
                <div class="form-control-lg">
                    <label class="text">Estuche de Proyector</label>
                    <br>
                    <label>
                        <input type="radio" name="projectorCase" value="1" class="form-check-input" checked>
                        Sí
                        <br>
                        <input type="radio" name="projectorCase" value="2" class="form-check-input">
                        No
                    </label>
                </div>

                <br><br>
                <div class="form-control-lg">
                    <br>
                    <label class="text">Cable de Electricidad</label>
                    <br>
                    <label>
                        <input type="radio" name="projectorWire" value="1" class="form-check-input" checked>
                        Sí
                        <br>
                        <input type="radio" name="projectorWire" value="2" class="form-check-input">
                        No
                    </label>
                </div>
                <br><br>
                <div class="form-control-lg">
                    <label class="text">Cable VGA</label>
                    <br>
                    <label>
                        <input type="radio" name="vgaWire" value="1" class="form-check-input" checked>
                        Sí
                        <br>
                        <input type="radio" name="vgaWire" value="2" class="form-check-input">
                        No
                    </label>
                </div>
                <br><br>
                <div class="form-control-lg">
                    <label class="text">Cable HDMI</label>
                    <br>
                    <label>
                        <input type="radio" name="hdmiWire" value="1" class="form-check-input" checked>
                        Sí
                        <br>
                        <input type="radio" name="hdmiWire" value="2" class="form-check-input">
                        No
                    </label>
                </div>
                <br><br>
                <div class="form-control-lg">
                    <label class="text">Control de Proyector</label>
                    <br>
                    <label>
                        <input type="radio" name="projectorControl" value="1" class="form-check-input" checked>
                        Sí
                        <br>
                        <input type="radio" name="projectorControl" value="2" class="form-check-input">
                        No
                    </label>
                </div>
                <br><br>
                <div class="form-control-lg">
                    <label class="text">  Baterías   </label>
                    <br>
                    <label>
                        <input type="radio" name="projectorBattery" value="1" class="form-check-input" checked>
                        Sí
                        <br>
                        <input type="radio" name="projectorBattery" value="2" class="form-check-input">
                        No
                    </label>
                </div>
                <br><br>
                <div class="form-control-lg">
                    <label class="text">Extensión</label>
                    <br>
                    <label>

                        <input type="radio" name="projectorExtension" value="1" class="form-check-input" checked>
                        Sí
                        <br>
                        <input type="radio" name="projectorExtension" value="2" class="form-check-input">
                        No
                    </label>
                </div>
                <br><br>
                <div class="form-control-lg">
                    <label class="text">Regleta</label>
                    <br>
                    <label>
                        <input type="radio" name="powerStrip" value="1" class="form-check-input" checked>
                        Sí
                        <br>
                        <input type="radio" name="powerStrip" value="2" class="form-check-input">
                        No
                    </label>
                </div>
                <br><br>
                <div class="form-control-lg">
                    <label class="text">Caja Plástica</label>
                    <br>
                    <label>
                        <input type="radio" name="plasticBox" value="1" class="form-check-input" checked>
                        Sí
                        <br>
                        <input type="radio" name="plasticBox" value="2" class="form-check-input">
                        No
                    </label>
                </div>
                <input hidden="true" type="text" name="category" value="projection_kit">
                <br>

                <div class="form-control-lg">
                    <button type="submit" class="btn btn-primary btn-lg" style="background-color: #005da4">Registrar</button>
                    <a href="SearchProjection.jsp" class="btn btn-primary btn-lg" style="background-color: #005da4">Regresar</a>
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
