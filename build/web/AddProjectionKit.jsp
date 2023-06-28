<%-- 
    Document   : AddProjectionKit
    Created on : 26/06/2023, 10:49:48 PM
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
        <h1>Agregar Proyectores</h1>
        <hr>
        <form action="RegisterValidationProjectionKit.jsp" method="post" class="form-control" >
            Código:
            <input type="text" name="txtCodeProjection" class="form-control" required>
            <br>
             Estuche de Proyector:
             <br>
            <label>
               
                <input type="radio" name="txtProjectionCase" value="1" class="form-check-input" checked >
                Sí
           <br>
                <input type="radio" name="txtProjectionCase" value="2" class="form-check-input" >
                No
            </label>
             <br>
             Cable a electricidad:
             <br>
             <label>
                 
                 <input type="radio" name="txtElectricityWire" value="1" class="form-check-input" checked >
                Sí
           <br>
                <input type="radio" name="txtElectricityWire" value="2" class="form-check-input" >
                No
            </label>
             <br>
            Conector VGA:
            <br>
            <label>
                
                <input type="radio" name="txtVGAConnector" value="1" class="form-check-input" checked>
                Sí
                <br>
                <input type="radio" name="txtVGAConnector" value="2" class="form-check-input" >
                No
            </label>
            <br>
             Cable HDMI:
             <br>
            <label>
               
                <input type="radio" name="txtHDMIConnector" value="1" class="form-check-input" checked >
                Sí
           <br>
                <input type="radio" name="txtHDMIConnector" value="2" class="form-check-input" >
                No
            </label>
             <br>
             Control del Proyector:
             <br>
             <label>
                 
                 <input type="radio" name="txtProjectorControl" value="1" class="form-check-input" checked >
                Sí
           <br>
                <input type="radio" name="txtProjectorControl" value="2" class="form-check-input" >
                No
            </label>
             <br>
            Baterias:
            <br>
            <label>
                
                <input type="radio" name="txtBattery" value="1" class="form-check-input" checked>
                Sí
                <br>
                <input type="radio" name="txtBattery" value="2" class="form-check-input" >
                No
            </label>
            <br>
             Extensión:
             <br>
            <label>
               
                <input type="radio" name="txtExtension" value="1" class="form-check-input" checked >
                Sí
           <br>
                <input type="radio" name="txtExtension" value="2" class="form-check-input" >
                No
            </label>
             <br>
             Regleta:
             <br>
             <label>
                 
                 <input type="radio" name="txtPowerStrip" value="1" class="form-check-input" checked >
                Sí
           <br>
                <input type="radio" name="txtPowerStrip" value="2" class="form-check-input" >
                No
            </label>
             <br>
            Caja Plástica:
            <br>
            <label>
                
                <input type="radio" name="txtPlasticBox" value="1" class="form-check-input" checked>
                Sí
                <br>
                <input type="radio" name="txtPlasticBox" value="2" class="form-check-input" >
                No
            </label>
            <br><br>
             <button type="submit" class="btn btn-primary btn-lg">Guardar</button>
             <a href="SearchProjection.jsp" class="btn btn-primary btn-lg">Regresar</a>
        </form>
        </div>
    </body>
</html>
