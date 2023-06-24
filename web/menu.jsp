<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Menu Principal</title>
        <!-- Agrega los enlaces a los archivos de Bootstrap -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.0/css/bootstrap.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.0/js/bootstrap.bundle.min.js"></script>
        <style>
            .menu-header {
                background-color: #f1f1f1;
                padding: 20px;
            }

            .menu-sidebar {

                background-color: #007bff;
                color: #fff;
                padding: 20px;
                height: 100vh;

            }
            .menu-content{
                padding: 20px;
            }
            .boton{


                padding: 10px 15px;
                border: none;
                border-radius: 4px;
                background-image: url('https://cdn-icons-png.flaticon.com/512/55/55003.png');
                background-size: cover;
                background-position: center;
                background-repeat: no-repeat;
                position: relative;
                z-index: 1;
            }

            .boton1{
                margin-bottom: 10px;
                margin-top: 10px;
                padding: 10px 15px;
                border: none;
                border-radius: 4px;
                background-image: url('https://cdn-icons-png.flaticon.com/512/55/55003.png');
                background-size: cover;
                background-position: center;
                background-repeat: no-repeat;
                position: relative;
                z-index: 1;
            }

            .botonCerrarSesion{
                margin-top: 110px;
                font-size: 20px;
                padding: 15px 70px;
                background-color: #0dcaf0;
                border: none;
                border-radius:10px;
                color: #fff;
            }
            .botonGeneral{
                font-size: 20px;
                padding: 15px 70px;
                background-color: #0dcaf0;
                border: none;
                border-radius:10px;
                color: #fff;
            }
            .title{
                text-align: center;
                font-size: 14px;
            }



        </style>
    </head>

    <body>
        <%
            String flag = request.getParameter("cerrar");
            if (flag != null) {

            } else {

                flag = session.getAttribute("flag").toString();

            }
        %>

        <div class="container-fluid">

            <div class="row">
                <!<!-- barra lateral -->
                <%
                    if (!flag.equalsIgnoreCase("2")) {


                %>
                <div class="col-md-3 menu-sidebar">
                    <!-- Contenido del menú lateral -->
                    <ul class="nav flex-column text-center">
                        <br><br><br><br>
                        <li class="nav-item ">
                            <a href="User.jsp">
                                <input class="botonGeneral" type="button" value="    usuario     " name="user" />
                            </a>
                        </li>
                        <br><br>

                        <li class="nav-item">
                            <a href="Loans.jsp">
                                <input class="botonGeneral" type="button" value="  Prestamos  " name="loans" />  
                            </a>
                        </li>
                        <br><br>
                        <li class="nav-item">
                            <a href="Returns.jsp" >
                                <input class="botonGeneral" type="button" value="devoluciones" name="returns"/> 
                            </a> 
                        </li>
                        <br><br>
                        <li class="nav-item ">
                            <a href="report.jsp">
                                <input class="botonGeneral" type="button" value="   Informe    " name="report" />
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
                    <div class="title">
                        <p1> <%=session.getAttribute("email")%></p1>

                    </div> 
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
                            button/> >
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
                            button/> >
                    </form>

                    <%                    }
                        }
                    %>

                </div>

            </div>

        </div>




    </body>
</html>