<%-- 
    Document   : Loans
    Created on : 22/06/2023, 10:02:41 PM
    Author     : Hp EliteBook
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prestamos</title>
    </head>
    <style>
        .container {
            display: flex;
            justify-content: center; /* Centra horizontalmente los elementos */
            align-items: center; /* Centra verticalmente los elementos */
            height: 100vh; /* Ajusta la altura del contenedor según tus necesidades */
        }

        .botonesArriba,
        .botonGeneral {
            font-size: 20px;
            padding: 50px;
            background-color: #0dcaf0;
            border: none;
            border-radius: 10px;
            color: #fff;
             margin: 40px;
        }
        .title{
            width: 100%;
            height: 120px;
            background-color: #0dcaf0;
            position: fixed;
            top: 0;
            left: 0;
            color: #fff;
            font-size: 25px;
            text-align: center;
        }

    </style>
    <body>
        <div class="title">
            <h1>Prestamos</h1>
        </div>

        <div class="container">


            <a href="LoansAccessories.jsp">
                <input class="botonesArriba" type="button" value=" Accesorios   " name="accessories" />
            </a>


            <a href="LoansSpeakers.jsp">
                <input class="botonGeneral" type="button" value="   Parlantes   " name="speaker" />
            </a>


            <a href="LoansComputer.jsp">
                <input class="botonGeneral" type="button" value=" Computadoras  " name="computer" />
            </a>


            <a href="ProjectorLoans.jsp">
                <input class="botonesArriba" type="button" value="Kit proyectores" name="projector" />
            </a>




        </div>
    </body>
</html>
