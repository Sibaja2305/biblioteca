<%-- 
    Document   : speakerAccessorie
    Created on : 24/06/2023, 03:59:50 PM
    Author     : Hp EliteBook
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Prestamos de parlantes</title>
        
        <link rel="stylesheet" href="estilos.css"/>
    </head>
    <body>
         <div class="title">
            <h1>Prestamos de Parlantes</h1>
        </div>
        <form action="ValidarProceso.jsp">
            <div class="form-group"> 
                <label class="text">Codigo:</label>
                <br>
                    <input type="text" class="form-control" name="codeSpeaker" required>
            </div>
            <br><br><br>
        <div class="button-group">
            <label class="text">Cable de Electricidad del Parlante</label>
            <label>
                <input type="radio" name="speakerWire" value="1" checked>
                Sí
           
                <input type="radio" name="speakerWire" value="2">
                No
            </label>
        </div>
            <br><br><br>
        <div class="button-group">
            <label class="text">Conector a Electricidad del Parlante</label>
            <label>
                <input type="radio" name="electricalConnector" value="1" checked>
                   Sí
           
                <input type="radio" name="electricalConnector" value="2">
                   No
            </label>
        </div>
            <br><br><br>
        <div class="button-group">
            <label class="text">  Auxiliar de Audio del Parlante     </label>
            <label>
                <input type="radio" name="auxiliaryAudio" value="1" checked>
                Sí
           
                <input type="radio" name="AuxiliaryAudio" value="2">
                No
            </label>
        </div>
             <br><br><br>
                   <div class="form-group">
                    <button type="submit" class="button">Registrar</button>
                </div>
    
            </form>
    </body>
</html>
