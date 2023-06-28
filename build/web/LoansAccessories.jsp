<%-- 
    Document   : LoansAccessories
    Created on : 24/06/2023, 12:58:05 PM
    Author     : Hp EliteBook
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Prestamos de Accesorios</title>
        <style>
            .text{
                font-size: 18px;
            }
            
            .button{
                font-size: 17px;
                padding: 20px 40px;
                background-color: #0dcaf0;
                border: none;
                border-radius: 10px;
                color: #fff;
                margin-left: 70px;
            }

        </style>
    </head>
    <body style="background-color: #0dcaf0;">
        <div class="container">

            <form method="post" action="RegisterLoans.jsp">
                <div class="form-group">
                    <label class="text">Codigo:</label>
                    <br>
                    <input type="text" class="form-control"   name="code" maxlength="10" size="5" required>
                </div>
                <br>
                <div class="form-group">
                    <label class="text">Nombre completo:</label>
                    <br>
                    <input type="text" class="form-control" size="10" name="fullName" maxlength="10" size="5" required>
                </div>
                <br>
                <div class="form-group">
                    <label class="text">Carnet UCR:</label>
                    <br>
                    <input type="text" class="form-control"  name="ucrCard" maxlength="10" size="5" required>
                </div>
                <br>
                <div class="form-group">
                    <label class="text">Tipo de Usuario:</label>
                    <br>
                    <select class="form-control" name="typeUser"  required>
                        <option value="">Selecciona una opción</option>
                        <option value="student">Estudiante</option>
                        <option value="teacher">Profesor</option>
                    </select>
                </div>
                <br>
                <div class="form-group">
                    <label class="text">Carreras:</label>
                    <br>
                    <select class="form-control" name="career" required>
                        <option value="">Selecciona una opción</option>
                        <option value="Info">Informática Empresarial</option>
                        <option value="English">Inglés</option>
                        <option value="graphicDesign">Diseño Gráfico</option>
                        <option value="tourism">Turismo</option>
                        <option value="primaryEducation">Educación Primaria</option>
                        <option value="mathEducation">Educación Matemáticas</option>
                        <option value="agriculturalEconomy">Economía Agrícola y agronegocios</option>
                        <option value="libraryScience">Bibliotecología Énf. Bibliotecas Educativa</option>
                        <option value="customs">Administración Aduanera y Comercio Exterior</option>
                        <option value="EnglishEducation">Ciencias de la Educación Primaria con Concentracion en Inglés</option>
                        <option value="naturalSciences">Enseñanza de las Ciencias Naturales</option>
                        <option value="agribusinessManagement">Maestría en Gerencia Agroempresarial</option>
                    </select>
                </div>
                <br>
                <div class="form-group">
                    <label class="text">Accesorio Prestado:</label>
                    <br>
                    <input type="text" class="form-control" name="nameAccessorie" maxlength="10" size="5" required>
                </div>
                <br>
                <div class="form-group">
                    <label class="text">Fecha de Prestamo:</label>
                    <br>
                    <input type="date" class="form-control"  name="loanDate"  maxlength="10" size="5"required>
                </div>
                <br>

                <label class="text">Fecha de Devolución:</label>
                <br>
                <div class="form-group" >
                    <input type="date" class="form-control"  name="returnDate" maxlength="10" size="5" required>
                     
                </div>
                <br>
                <div class="form-group">
                    <button type="submit" class="btn btn-success btn-lg">Registrar</button>
                </div>
            </form>
        </div>
    </body>
</html>
