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
        <meta charset="UTF-8">
        <title>Prestamos</title>
    </head>
    <style>
        .container {
            display: flex;
            justify-content: center; /* Centra horizontalmente los elementos */
            align-items: center; /* Centra verticalmente los elementos */
            height: 100vh; /* Ajusta la altura del contenedor según tus necesidades */
            background-color: #e6e6e6;
        }

        .botonAcceserory{
            margin-bottom: 10px;
            padding: 90px 90px;
            margin-right: 40px;
            border: none;
            border-radius: 4px;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-color: #e6e6e6;
            position: relative;
            background-image: url('https://cdn2.iconfinder.com/data/icons/education-1008/64/physics-nuclear-pencils-education-science-256.png');
        }
        .botonAcceserory:hover::before{
            content: 'Accesorios';
            position: absolute;
            top: 195px;
            left: 0;
            width: 100%;
            text-align: center;
            color: black;
            font-weight: bold;
            font-family: Arial, sans-serif;

        }
        .botonSpeaker{
            margin-bottom: 10px;
            margin-left: 55px;
            padding: 90px 90px;
            border: none;
            border-radius: 4px;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-color: #e6e6e6;
            position: relative;
            background-image: url('https://cdn3.iconfinder.com/data/icons/electronics-121/64/acoustics-256.png');
        }
        .botonSpeaker:hover::before{
            content: 'Parlantes';
            position: absolute;
            top: 195px;
            left: 0;
            width: 100%;
            text-align: center;
            color: black;
            font-weight: bold;
            font-family: Arial, sans-serif;

        }
        .botonComputer{
            margin-bottom: 10px;
            margin-left: 55px;
            padding: 90px 90px;
            border: none;
            border-radius: 4px;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-color: #e6e6e6;
            position: relative;
            background-image: url('https://cdn3.iconfinder.com/data/icons/streamline-icon-set-free-pack/48/Streamline-06-256.png');
        }
        .botonComputer:hover::before{
            content: 'Computadoras';
            position: absolute;
            top: 190px;
            left: 0;
            width: 100%;
            text-align: center;
            color: black;
            font-weight: bold;
            font-family: Arial, sans-serif;

        }
        .botonProjector{
            margin-bottom: 10px;
            margin-left: 55px;
            padding: 90px 90px;
            border: none;
            border-radius: 4px;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-color: #e6e6e6;
            position: relative;
            background-image: url('https://cdn1.iconfinder.com/data/icons/office-workers-2/64/Office_Outline_Icon_64px_Proyektor-256.png');
        }
        .botonProjector:hover::before{
            content: 'Proyectores';
            position: absolute;
            top: 180px;
            left: 0;
            width: 100%;
            text-align: center;
            color: black;
            font-weight: bold;
            font-family: Arial, sans-serif;

        }

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


    </style>
    <body>
        <div class="title">
            <h1>Prestamos</h1>
        </div>

        <div class="container">

            <a href="LoansAccessories.jsp">

            </a>
            <a href="LoansAccessories.jsp">
                <button class="botonAcceserory" type="button"  name="accessories" >
                </button>
            </a>


            <a href="SearchSpeaker.jsp">
                <button class="botonSpeaker" type="button"  name="speaker" >
                                    </button>

            </a>


            <a href="SearchComputer.jsp">
                <button class="botonComputer" type="button" name="computer" >
                </button>
            </a>


            <a href="SearchProjection.jsp">
                <button class="botonProjector" type="button" name="projector" >
                </button>
            </a>

        </div>
    </body>
</html>