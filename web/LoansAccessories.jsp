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
    </head>
      <style>
            .text{
                font-size: 18px;
            }
            .button{
                background-color: #008641bf;
                font-size: 20px;
                padding: 10px 25px;
                border: none;
                border-radius: 10px;
                color: #fff;
                font-family: Arial, sans-serif;
            }
            .title{
                width: 100%;
                height: 120px;
                background-color: #00c0f3;
                position: fixed;
                top: 0;
                left: 0;
                color: #fff;
                font-size: 20px;
                text-align: center;
                font-family: Arial, sans-serif;
            }
             .home{
            margin-bottom: 30px;
            margin-top: 70px;
            margin-left: 1180px;
            padding: 25px 25px;
            background-color: #e6e6e6;
            border: none;
            border-radius: 4px;
            background-image: url('https://cdn1.iconfinder.com/data/icons/jumpicon-basic-ui-line-1/32/-_Home-House--256.png');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            position: relative;
        }
           .home:hover::before{
                content: 'Menu';
                position: absolute;
                top: 50px;
                left: 0;
                width: 100%;
                text-align: center;
                color: black;
                font-weight: bold;
                font-family: Arial, sans-serif;
                font-size: 12px;

            }

        </style>
    <body style="background-color: #e6e6e6;">
        <div class="title">
            <h1>Accesorio</h1>
             <a href="menu.jsp">
            <button class="home">
                     </button>
                 </a>
        </div>
        <%
            String category = request.getParameter("category");
            String code = request.getParameter("code");
            if (category == null) {
                category = "Accesorio";
            } else {
                category = category.trim();
            }
            if (code == null) {
                code = "0";
            } else {
                code = code.trim();
            }
        %>
        <div class="container" style="font-family: Arial, sans-serif;">
            <br><br><br><br><br><br>
            <form method="post" action="RegisterLoans.jsp">
                <div class="form-group">
                    <label class="text">Codigo:  </label>
                    <br>
                    <input type="text" class="form-label" style="font-size:16px;" name="txtCode" required value="<%=code%>">
                </div>
                <br>
                <div class="form-group">
                    <label class="text">Nombre completo:</label>
                    <br>
                    <input type="text" class="form-control" size="10" name="txtFullName"  size="5" required>
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
                    <input type="text" class="form-control" name="txtNameAccessorie" size="5" required>
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
                    <button type="submit" class="button">Registrar</button>
                </div>
                <input hidden="true" type="text" name="category" value="<%=category%>">
            </form>

        </div>
    </body>
</html>
