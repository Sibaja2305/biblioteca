<%-- 
    Document   : AddSpeaker
    Created on : 25/06/2023, 09:53:16 PM
    Author     : Hp EliteBook
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
        <h1>Agregar Parlante</h1>
        <hr>
        <form action="RegisterValidationSpeaker.jsp" method="post" class="form-control" >
            Code:
            <input type="text" name="txtCodeSpeaker" class="form-control" required>
            <br>
             Cable de Electricidad:
             <br>
            <label>
               
                <input type="radio" name="txtspeakerWire" value="1" class="form-check-input" checked >
                Sí
           <br>
                <input type="radio" name="txtspeakerWire" value="2" class="form-check-input" >
                No
            </label>
             <br>
             Conector a electricidad:
             <br>
             <label>
                 
                 <input type="radio" name="txtElectricalConnector" value="1" class="form-check-input" checked >
                Sí
           <br>
                <input type="radio" name="txtElectricalConnector" value="2" class="form-check-input" >
                No
            </label>
             <br>
            Auxiliar audio:
            <br>
            <label>
                
                <input type="radio" name="txtAuxiliaryAudio" value="1" class="form-check-input" checked>
                Sí
                <br>
                <input type="radio" name="txtAuxiliaryAudio" value="2" class="form-check-input" >
                No
            </label>
            <br><br>
             <button type="submit" class="btn btn-primary btn-lg">Guardar</button>
             <a href="SearchSpeaker.jsp" class="btn btn-primary btn-lg">Regresar</a>
        </form>
        </div>
    </body>
</html>
