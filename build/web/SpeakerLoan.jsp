<%-- 
    Document   : speakerAccessorie
    Created on : 24/06/2023, 03:59:50 PM
    Author     : Hp EliteBook
--%>

<%@page import="clases.Speaker"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Prestamos de parlantes</title>
        <link href="bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="estilos.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <%

            String speaker = request.getParameter("selectSpeaker").trim();


        %>
        <div class="text-center" style=" background-color: #0dcaf0; color: #fff; font-size: 25px;" >
            <h1 class="display-3">Prestamos</h1>
        </div>
        <br>
        <div class="container" >
            <form action="LoansAccessories.jsp">
                <br>
                <label class="form-control-lg">Codigo</label>
                <br>
                <input disabled="true" type="text" class="form-label" style="font-size:16px;" name="idsd" required value="<%=speaker%>">

                <div class="form-control-lg">

                    <input hidden="true" type="text" class="form-label" name="code" required value="<%=speaker%>">
                </div>

                <div class="form-control-lg">
                    <label class="text">Cable de Electricidad del Parlante</label>
                    <br>
                    <label>
                        <input type="radio" name="speakerWire" value="1" class="form-check-input" checked>
                        Sí
                        <br>
                        <input type="radio" name="speakerWire" value="2" class="form-check-input">
                        No

                    </label>
                </div>

                <div class="form-control-lg">
                    <label class="text">Conector a Electricidad del Parlante</label>
                    <br>
                    <label>
                        <input type="radio" name="electricalConnector" value="1" class="form-check-input" checked>
                        Sí
                        <br>
                        <input type="radio" name="electricalConnector" value="2" class="form-check-input">
                        No
                    </label>
                </div>

                <div class="form-control-lg">
                    <label class="text">  Auxiliar de Audio del Parlante     </label>
                    <br>
                    <label>
                        <input type="radio" name="auxiliaryAudio" value="1" class="form-check-input" checked>
                        Sí
                        <br>
                        <input type="radio" name="AuxiliaryAudio" value="2" class="form-check-input">
                        No
                    </label>
                </div>
                <input hidden="true" type="text" name="category" value="speaker">

                <div class="form-control-lg">
                    <button type="submit" class="btn btn-primary btn-lg">Registrar</button>
                    <a href="SearchSpeaker.jsp" class="btn btn-primary btn-lg">Regresar</a>
                </div>
                

            </form>
        </div>
    </body>
</html>
