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
                    <label class="text">Codigo:  </label>
                    <br>
                    <input type="text" class="form-control"   name="txtCode" maxlength="10" size="5" required>
                </div>
                <br>
                <div class="form-group">
                    <label class="text">Nombre completo:</label>
                    <br>
                    <input type="text" class="form-control" size="10" name="txtFullName" maxlength="10" size="5" required>
                </div>
                <br>
                <div class="form-group">
                    <label class="text">Identificación:</label>
                    <br>
                    <input type="text" class="form-control"  name="txtIdentification" maxlength="10" size="5" required>
                </div>
                <br>
                <div class="form-group">
                    <label class="text">Tipo de Usuario:</label>
                    <br>
                    <select class="form-control" name="txtTypeUser"  required>
                        <option value="">Selecciona una opción</option>
                        <option value="Estudiante">Estudiante</option>
                        <option value="Profesor">Profesor</option>
                    </select>
                </div>
                <br>
                <div class="form-group">
                    <label class="text">Carreras:</label>
                    <br>
                    <select class="form-control" name="txtCareer" required>
                        <option value="">Selecciona una opción</option>
                        <option value="Informática Empresarial">Informática Empresarial</option>
                        <option value="Inglés">Inglés</option>
                        <option value="Diseño Gráfico">Diseño Gráfico</option>
                        <option value="Turismo">Turismo</option>
                        <option value="Educación Primaria">Educación Primaria</option>
                        <option value="Educación Matemáticas">Educación Matemáticas</option>
                        <option value="Economía Agrícola y agronegocios">Economía Agrícola y agronegocios</option>
                        <option value="Bibliotecología Énf. Bibliotecas Educativa">Bibliotecología Énf. Bibliotecas Educativa</option>
                        <option value="Administración Aduanera y Comercio Exterior">Administración Aduanera y Comercio Exterior</option>
                        <option value="Ciencias de la Educación Primaria con Concentracion en Inglés">Ciencias de la Educación Primaria con Concentracion en Inglés</option>
                        <option value="Enseñanza de las Ciencias Naturales">Enseñanza de las Ciencias Naturales</option>
                        <option value="Maestría en Gerencia Agroempresarial">Maestría en Gerencia Agroempresarial</option>
                    </select>
                </div>
                <br>
                <div class="form-group">
                    <label class="text">Accesorio Prestado:</label>
                    <br>
                    <input type="text" class="form-control" name="txtNameAccessorie" maxlength="10" size="5" required>
                </div>
                <br>
                <div class="form-group">
                    <label class="text">Fecha de Prestamo:</label>
                    <br>
                    <input type="datetime-local" class="form-control"  name="txtLoanDate"  maxlength="10" size="5"required>
                </div>
                <br>

                <label class="text">Fecha de Devolución:</label>
                <br>
                <div class="form-group" >
                    <input type="datetime-local" class="form-control"  name="txtReturnDate" maxlength="10" size="5" required>
                     
                </div>
                <br>
                <div class="form-group">
                    <button type="submit" class="btn btn-success btn-lg">Registrar</button>
                </div>
            </form>
        </div>
    </body>
</html>
