<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Menu Principal</title>
        <!-- Agrega los enlaces a los archivos de Bootstrap -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.0/css/bootstrap.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.0/js/bootstrap.bundle.min.js"></script>
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

            .menu-sidebar {
                background-color: #80a9ba;
                padding: 20px;
                height: 100vh;
            }

            .menu-content {
                padding: 20px;
                background-color: #e6e6e6;
            }

            .boton {
                margin-bottom: 10px;
                padding: 25px 25px;
                border: none;
                border-radius: 4px;
                background-image: url('https://cdn2.iconfinder.com/data/icons/telegram/154/telegram-menu-bar-ui-256.png');
                background-size: cover;
                background-position: center;
                background-repeat: no-repeat;
                background-color: #e6e6e6;
                position: relative;
                z-index: 1;
            }

            .boton1 {
                margin-bottom: 10px;
                padding: 25px 25px;
                border: none;
                border-radius: 4px;
                background-image: url('https://cdn2.iconfinder.com/data/icons/telegram/154/telegram-menu-bar-ui-256.png');
                background-size: cover;
                background-position: center;
                background-repeat: no-repeat;
                background-color: #e6e6e6;
                position: relative;
                z-index: 1;
            }

            .botonCerrarSesion {
                margin-top: 110px;
                font-size: 20px;
                padding: 15px 68px;
                border: none;
                border-radius: 10px;
                color: #fff;
                background-color: #005da4;
                font-family: Arial, sans-serif;
            }

            .botonGeneral {
                font-size: 20px;
                padding: 15px 70px;
                border: none;
                border-radius: 10px;
                color: #fff;
                background-color: #005da4;
                font-family: Arial, sans-serif;
            }

            .botonImagen1 {
                padding: 90px 90px;
                border: none;
                border-radius: 4px;
                background-color: #e6e6e6;
                margin-left: 150px;
                margin-top: 150px;
                background-image: url('https://cdn3.iconfinder.com/data/icons/essentials01-4/512/loans-contract-pay-credit-credit_card-512.png');
                background-size: cover;
                background-position: center;
                background-repeat: no-repeat;
                position: relative;
            }
            .botonImagen1:hover::before{
                content: 'Prestamos';
                position: absolute;
                top: 180px;
                left: 0;
                width: 100%;
                text-align: center;
                color: black;
                font-weight: bold;
                font-family: Arial, sans-serif;

            }
            .botonImagen2{
                padding: 90px 90px;
                border: none;
                border-radius: 4px;
                background-color: #e6e6e6;
                margin-left: 80px;
                background-image: url('https://cdn1.iconfinder.com/data/icons/talent-management-13/512/FastWorking-performance-handoverwork-giving-document-handover-urgentwork-rush-punctuality-deadline-1024.png');
                background-size: cover;
                background-position: center;
                background-repeat: no-repeat;
                position: relative;
            }
            .botonImagen2:hover::before{
                content: 'Devoluciones';
                position: absolute;
                top: 180px;
                left: 0;
                width: 100%;
                text-align: center;
                color: black;
                font-weight: bold;
                font-family: Arial, sans-serif;
            }
            .botonImagen3{
                padding: 90px 90px;
                border: none;
                border-radius: 4px;
                background-color: #e6e6e6;
                margin-left: 80px;
                background-image: url('https://cdn2.iconfinder.com/data/icons/coronavirus-covid19-1/49/47-512.png');
                background-size: cover;
                background-position: center;
                background-repeat: no-repeat;
                position: relative;
            }
            .botonImagen3:hover::before{
                content: 'Informe';
                position: absolute;
                top: 180px;
                left: 0;
                width: 100%;
                text-align: center;
                color: black;
                font-weight: bold;
                font-family: Arial, sans-serif;
            }

            .title {
                text-align: center;
                font-size: 15px;
                font-family: Arial, sans-serif;
            }
            header{
                background-color: #00c0f3;
                padding: 0px 0px;
                display: flex;
                justify-content: center;
                align-items: center;
            }
            h1{
                margin-top: 80px;
                margin-left: 5px;
                font-size: 30px;
                font-family: Arial, sans-serif;
                font-weight: bold;
                

            }

        </style>
    </head>

    <body style="background-color: #e6e6e6;">

        <header>
            <img src="https://ecp.ucr.ac.cr/images/firma-horizontal-una-linea-rgb.png"alt="alt">
            <h1>Sistema de Biblioteca</h1>
                   </header>
            <%
                String flag = request.getParameter("cerrar");
                if (flag != null) {

                } else {

                    flag = session.getAttribute("flag").toString();

                }
            %>

        <div class="container-fluid">

            <div class="row">
                <!-- barra lateral -->
                <%
                    if (!flag.equalsIgnoreCase("2")) {

                %>
                <div class="col-md-3 menu-sidebar">
                    <!-- Contenido del menú lateral -->
                    <ul class="nav flex-column text-center">

                        </li>
                        <br><br>

                        <li class="nav-item">
                            <a href="Loans.jsp">
                                <input class="botonGeneral" type="button" value="  Prestamos  " name="loans" />  
                            </a>
                        </li>
                        <br><br>
                        <li class="nav-item">
                            <a href="Return.jsp" >
                                <input class="botonGeneral" type="button" value="Devoluciones" name="returns"/> 
                            </a> 
                        </li>
                        <br><br>
                        <li class="nav-item ">
                            <a href="LoanHistory.jsp">
                                <input class="botonGeneral" type="button" value="    Informe     " name="report" />
                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="cerrarSesion.jsp" >
                                <input  class="botonCerrarSesion" type="button" value="Cerrar Sesion" name="returns"  /> 
                            </a> 
                        </li>
                        <br>
                    </ul>
                </div>
                <%                    }
                %>

                <div class="col-md-9 menu-content">
                    <!-- Contenido -->

                    <%if (flag != null) {
                            if (flag.equalsIgnoreCase("1")) {
                    %>
                    <form action="menu.jsp">
                        <input hidden="true"
                               type="text"
                               name="cerrar"
                               value="2">
                        <button
                            class="boton1"
                            type="submit"
                            value="ocultar"
                            button/> 
                    </form>
                    <%                } else {
                    %>
                    <form action="menu.jsp">
                        <input hidden="true"
                               type="text"
                               name="cerrar"
                               value="1">
                        <button
                            class="boton"
                            type="submit"
                            value="mostrar"
                            button/> 
                    </form>
                    <%                    }
                        }
                    %>

                    <div class="button-container">
                        <a href="Loans.jsp">
                            <button class="botonImagen1" type="button" value="  Prestamos  " name="loans">
                            </button>
                        </a>
                        <a href="Return.jsp">
                            <button class="botonImagen2" type="button" value="devoluciones" name="returns">
                            </button>
                        </a>

                        <a href="LoanHistory.jsp">
                            <button class="botonImagen3" type="button" value="   Informe    " name="report">
                            </button>
                        </a>
                    </div>
                </div>

            </div>

        </div>
    </body>
</html>
