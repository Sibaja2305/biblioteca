<%-- 
    Document   : LoansAccessories
    Created on : 24/06/2023, 12:58:05 PM
    Author     : Hp EliteBook
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <meta charset="UTF-8">
        <title>Prestamos de Accesorios</title>
    </head>
    <style>
        .text{
            font-size: 18px;
        }
        .button{
            background-color: #008641bf;
            font-size: 20px;
            padding: 10px 25px;
            border: none;
            border-radius: 10px;
            color: #fff;
            font-family: Arial, sans-serif;
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
        .home{
            margin-bottom: 80px;
            margin-top: 30px;
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
            font-size: 12px;

        }

    </style>
    <body style="background-color: #e6e6e6;">
        <div class="title">
            <h1>Prestamo de Accesorio</h1>
            <a href="menu.jsp">
                <button class="home">
                </button>
            </a>
        </div>
        <%
            String category = request.getParameter("category");
            String code = request.getParameter("code");
            if (category == null) {
                category = "Accesorio";
            } else {
                category = category.trim();
            }
            if (code == null) {
                code = "0";
            } else {
                code = code.trim();
            }
        %>

        <form method="post" action="RegisterLoans.jsp">
            <br>  <br>  <br>  <br>  <br>  <br> <br>
            <div class="container" style="font-family: Arial, sans-serif; display: grid; grid-template-columns: 1fr 1fr 1fr; grid-column-gap: 20px;">
                <div>

                    <!-- Contenido de la columna 1 -->
                    <div class="form-group">
                        <label class="text">Código:</label>
                        <br>
                        <input type="text" class="form-label" style="font-size:16px;" name="txtCode" required value="<%=code%>">
                    </div>
                    <br>
                    <div class="form-group">
                        <label class="text">Tipo de Usuario:</label>
                        <br>
                        <select class="form-control" name="txtTypeUser" required>
                            <option value="">Selecciona una opción</option>
                            <option value="Estudiante">Estudiante</option>
                            <option value="Profesor">Profesor</option>
                        </select>
                    </div>
                    <br>
                    <div class="form-group">
                        <label class="text">Fecha de Préstamo:</label>
                        <br>
                        <input type="datetime-local" class="form-control" name="txtLoanDate" maxlength="10" size="5" required>
                    </div>
                    <div style="height: 20px;"></div> <!-- Espacio vacío -->
                    <div class="form-group">
                        <!-- Espacio vacío adicional para mover el botón hacia abajo -->
                    </div>
                    <br>
                    <div style="grid-column: 1 / 4;">
                        <!-- Contenido del botón -->
                        <div class="form-group">
                            <button type="submit" class="button" style="width: 100%;">Registrar</button>
                        </div>
                    </div>
                </div>
                <div>

                    <div></div>
                    <!-- Contenido de la columna 2 -->
                    <div class="form-group">
                        <label class="text">Identificación:</label>
                        <br>
                        <input type="text" class="form-control" name="txtIdentification" maxlength="10" size="5" required>
                    </div>
                    <br>
                    <div class="form-group">
                        <label class="text">Carreras:</label>
                        <br>
                        <select class="form-control" name="txtCareer" required>
                            <option value="">Selecciona una opción</option>
                            <option value="Informática Empresarial">Informática Empresarial</option>
                            <option value="Inglés">Inglés</option>
                            <option value="Diseño Gráfico">Diseño Gráfico</option>
                            <option value="Turismo">Turismo</option>
                            <option value="Educación Primaria">Educación Primaria</option>
                            <option value="Educación Matemáticas">Educación Matemáticas</option>
                            <option value="Economía Agrícola y agronegocios">Economía Agrícola y agronegocios</option>
                            <option value="Bibliotecología Énf. Bibliotecas Educativa">Bibliotecología Énf. Bibliotecas Educativa</option>
                            <option value="Administración Aduanera y Comercio Exterior">Administración Aduanera y Comercio Exterior</option>
                            <option value="Ciencias de la Educación Primaria con Concentracion en Inglés">Ciencias de la Educación Primaria con Concentracion en Inglés</option>
                            <option value="Enseñanza de las Ciencias Naturales">Enseñanza de las Ciencias Naturales</option>
                            <option value="Maestría en Gerencia Agroempresarial">Maestría en Gerencia Agroempresarial</option>
                        </select>
                    </div>
                    <br>
                    <div class="form-group">
                        <label class="text">Fecha de Devolución:</label>
                        <br>
                        <input type="datetime-local" class="form-control" name="txtReturnDate" maxlength="10" size="5" required>
                    </div>
                </div>
                <div>
                    <div></div>
                    <!-- Contenido de la columna 3 -->
                    <div class="form-group">
                        <label class="text">Nombre completo:</label>
                        <br>
                        <input type="text" class="form-control" size="10" name="txtFullName" size="5" required>
                    </div>
                    <br>
                    <div class="form-group">
                        <label class="text">Accesorio Prestado:</label>
                        <br>
                        <input type="text" class="form-control" name="txtNameAccessorie" size="5" required>
                    </div>
                    <br>

                </div>
            </div>
            <input hidden="true" type="text" name="category" value="<%=category%>">
        </form>
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
