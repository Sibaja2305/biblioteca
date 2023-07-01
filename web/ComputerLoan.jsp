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

        <title>Prestamos de Computadora</title>
        <link href="bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="estilos.css"/>
    </head>
    <body>
        <%
            String computer = request.getParameter("selectComputer").trim();
        %>
        <div class="text-center" style=" background-color: #0dcaf0; color: #fff; font-size: 25px;">
            <h1 class="display-3">Prestamos de Computadora</h1>
        </div>
        <div class="container" >
            <form action="LoansAccessories.jsp">
                <br>
                <label class="form-control-lg">Codigo</label>
                <br>
                <input disabled="true" type="text" class="form-label" style="font-size:16px;" name="codeFalse" required value="<%=computer%>">

                <div class="form-control-lg">

                    <input hidden="true" type="text" class="form-label" name="code" required value="<%=computer%>">
                </div>



                <div class="form-control-lg">
                    <label class="text">Cargador</label>
                    <br>
                    <label>
                        <input type="radio" name="chargerComputer" value="1" class="form-check-input" checked>
                        Sí
                        <br>
                        <input type="radio" name="chargerComputer" value="2" class="form-check-input">
                        No
                    </label>
                </div>

                <div class="form-control-lg">
                    <label class="text">Estuche Suave de Computadora</label>
                    <br>
                    <label>
                        <input type="radio" name="softCaseComputer" value="1" class="form-check-input" checked>
                        Sí
                        <br>
                        <input type="radio" name="softCaseComputer" value="2" class="form-check-input">
                        No
                    </label>
                </div>

                <div class="form-control-lg">
                    <label class="text">  Estuche Estilo Maletín    </label>
                    <br>
                    <label>
                        <input type="radio" name="briefcaseComputer" value="1" class="form-check-input" checked>
                        Sí
                       <br>
                        <input type="radio" name="briefcaseComputer" value="2" class="form-check-input">
                        No
                    </label>
                </div>
                 <input hidden="true" type="text" name="category" value="computer">
               <br>
                <div class="form-control-lg">
                    <button type="submit" class="btn btn-primary btn-lg">Registrar</button>
                    <a href="SearchComputer.jsp" class="btn btn-primary btn-lg">Regresar</a>
                </div>

            </form>
        </div>
    </body>
</html>
