<%-- 
    Document   : AddComputer
    Created on : 26/06/2023, 08:58:12 PM
    Author     : Hp EliteBook
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
        <h1>Agregar Computadora</h1>
        <hr>
        <form action="RegisterValidationComputer.jsp" method="post" class="form-control" >
            Código:
            <input type="text" name="txtCodeComputer" class="form-control" required>
            <br>
             Cargador:
             <br>
            <label>
               
                <input type="radio" name="txtChargerComputer" value="1" class="form-check-input" checked >
                Sí
           <br>
                <input type="radio" name="txtChargerComputer" value="2" class="form-check-input" >
                No
            </label>
             <br>
             Conector a electricidad:
             <br>
             <label>
                 
                 <input type="radio" name="txtSoftCaseComputer" value="1" class="form-check-input" checked >
                Sí
           <br>
                <input type="radio" name="txtSoftCaseComputer" value="2" class="form-check-input" >
                No
            </label>
             <br>
            Auxiliar audio:
            <br>
            <label>
                
                <input type="radio" name="txtbriefcaseComputer" value="1" class="form-check-input" checked>
                Sí
                <br>
                <input type="radio" name="txtbriefcaseComputer" value="2" class="form-check-input" >
                No
            </label>
            <br><br>
             <button type="submit" class="btn btn-primary btn-lg">Guardar</button>
             <a href="SearchComputer.jsp" class="btn btn-primary btn-lg">Regresar</a>
        </form>
        </div>
    </body>
</html>
