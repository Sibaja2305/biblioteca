<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h2>Login</h2>
        <form method="post" action="loginValidation.jsp">
            <div class="form-group">
                <label>Email:</label>
                <input type="email" class="form-control" name="email" required>
            </div>
            <div class="form-group">
                <label>Contraseña:</label>
                <input type="password" class="form-control" name="password" required>
            </div>
            <button type="submit" class="btn btn-primary">Iniciar sesión</button>
           
        </form>
        
        <br>
        <a href="Registro.jsp">¿Deseas registrarte?</a>
        <br><br>
        <div>
            <div>  <p id="screen"></p></div>
            <br>
         
            
        </div> 
        
    </div>
   

</body>
</html>

