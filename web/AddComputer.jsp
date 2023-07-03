<%-- 
    Document   : AddComputer
    Created on : 26/06/2023, 08:58:12 PM
    Author     : Hp EliteBook
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
            <h1>Agregar Computadora</h1>
              <a href="menu.jsp">
                <button class="home">
                </button>
            </a>
        </div>
        <div class="container" style="font-family: Arial, sans-serif;">
            <br><br><br><br><br><br><br>
            <form action="RegisterValidationComputer.jsp" method="post" class="form-control" style="background-color: #e6e6e6;">
                Código:
                <input type="text" name="txtCodeComputer" class="form-control" required>
                <br>
                Cargador:
                <br>
                <label>

                    <input type="radio" name="txtChargerComputer" value="1" class="form-check-input" checked >
                    Sí
                    <br>
                    <input type="radio" name="txtChargerComputer" value="2" class="form-check-input" >
                    No
                </label>
                <br>
                Conector a electricidad:
                <br>
                <label>

                    <input type="radio" name="txtSoftCaseComputer" value="1" class="form-check-input" checked >
                    Sí
                    <br>
                    <input type="radio" name="txtSoftCaseComputer" value="2" class="form-check-input" >
                    No
                </label>
                <br>
                Auxiliar audio:
                <br>
                <label>

                    <input type="radio" name="txtbriefcaseComputer" value="1" class="form-check-input" checked>
                    Sí
                    <br>
                    <input type="radio" name="txtbriefcaseComputer" value="2" class="form-check-input" >
                    No
                </label>
                <br><br>
                <button type="submit" class="btn btn-primary btn-lg" style="background-color: #005da4;">Guardar</button>
                <a href="SearchComputer.jsp" class="btn btn-primary btn-lg" style="background-color: #005da4;">Regresar</a>
            </form>
        </div>
    </body>
</html>
