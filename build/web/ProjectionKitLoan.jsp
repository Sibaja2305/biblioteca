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
        <link href="bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Prestamos de Proyectores</title>
        
        <link rel="stylesheet" href="estilos.css"/>
        <style>
           .button-group label {
            display: block;
            margin-bottom: 10px;
        }
    </style>
    </head>
    <body>
          <%

            String projection = request.getParameter("selectProjectionKit").trim();


        %>
         <div class="text-center" style=" background-color: #0dcaf0; color: #fff; font-size: 25px;">
            <h1 class="display-3">Prestamos de Kit de Proyectores</h1>
        </div>
        <form action="LoansAccessories.jsp">
            
            <div class="form-group"> 
                <label class="text">Codigo:</label>
                <br>
                 <input disabled="true" type="text" class="form-label" style="font-size:16px;" name="idsd" required value="<%=projection%>">
                    <input hidden="true" type="text" class="form-label" name="code" required value="<%=projection%>">
            </div>
            <br><br>
        <div class="button-group">
            <label class="text">Estuche de Proyector</label>
            <label>
                <input type="radio" name="projectorCase" value="1" checked>
                Sí
           
                <input type="radio" name="projectorCase" value="2">
                No
            </label>
        </div>
            
            <br><br>
        <div class="button-group">
            <label class="text">Cable de Electricidad</label>
            <label>
                <input type="radio" name="projectorWire" value="1" checked>
                   Sí
           
                <input type="radio" name="projectorWire" value="2">
                   No
            </label>
        </div>
            <br><br>
        <div class="button-group">
            <label class="text">Cable VGA</label>
            <label>
                <input type="radio" name="vgaWire" value="1" checked>
                Sí
           
                <input type="radio" name="vgaWire" value="2">
                No
            </label>
        </div>
            <br><br>
        <div class="button-group">
            <label class="text">Cable HDMI</label>
            <label>
                <input type="radio" name="hdmiWire" value="1" checked>
                Sí
           
                <input type="radio" name="hdmiWire" value="2">
                No
            </label>
        </div>
            <br><br>
        <div class="button-group">
            <label class="text">Control de Proyector</label>
            <label>
                <input type="radio" name="projectorControl" value="1" checked>
                   Sí
           
                <input type="radio" name="projectorControl" value="2">
                   No
            </label>
        </div>
            <br><br>
        <div class="button-group">
            <label class="text">  Baterias   </label>
            <label>
                <input type="radio" name="projectorBattery" value="1" checked>
                Sí
           
                <input type="radio" name="projectorBattery" value="2">
                No
            </label>
        </div>
            <br><br>
        <div class="button-group">
            <label class="text">Extension</label>
            <label>
                <input type="radio" name="projectorExtension" value="1" checked>
                Sí
           
                <input type="radio" name="projectorExtension" value="2">
                No
            </label>
        </div>
            <br><br>
        <div class="button-group">
            <label class="text">Regleta</label>
            <label>
                <input type="radio" name="powerStrip" value="1" checked>
                   Sí
           
                <input type="radio" name="powerStrip" value="2">
                   No
            </label>
        </div>
            <br><br>
        <div class="button-group">
            <label class="text">Caja Plastica</label>
            <label>
                <input type="radio" name="plasticBox" value="1" checked>
                Sí
           
                <input type="radio" name="plasticBox" value="2">
                No
            </label>
        </div>
             <input hidden="true" type="text" name="category" value="projection_kit">
             <br>
                 
                    <button type="submit" class="button">Registrar</button>
                
    
            </form>
    </body>
</html>
