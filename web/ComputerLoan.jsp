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
        
        <link rel="stylesheet" href="estilos.css"/>
    </head>
    <body>
         <div class="title">
            <h1>Prestamos de Computadora</h1>
        </div>
        <form action="ValidarProceso.jsp">
            <div class="form-group"> 
                <label class="text">Codigo:</label>
                <br>
                    <input type="text" class="form-control" name="codeComputer" required>
            </div>
            <br><br><br>
        <div class="button-group">
            <label class="text">Cargador</label>
            <label>
                <input type="radio" name="chargerComputer" value="1" checked>
                Sí
           
                <input type="radio" name="chargerComputer" value="2">
                No
            </label>
        </div>
            <br><br><br>
        <div class="button-group">
            <label class="text">Estuche Suave de Computadora</label>
            <label>
                <input type="radio" name="softCaseComputer" value="1" checked>
                   Sí
           
                <input type="radio" name="softCaseComputer" value="2">
                   No
            </label>
        </div>
            <br><br><br>
        <div class="button-group">
            <label class="text">  Estuche Estilo Maletín    </label>
            <label>
                <input type="radio" name="briefcaseComputer" value="1" checked>
                Sí
           
                <input type="radio" name="briefcaseComputer" value="2">
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
