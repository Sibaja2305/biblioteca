<%@page import="clasess.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="databasemysql.ConnectionMysql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Dashboard</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
        <style>
            /* Estilos personalizados para el dashboard */
            .dashboard-header {
                background-color: #f8f9fc;
                padding: 20px;
            }
            .dashboard-sidebar {
                background-color: #343a40;
                color: #fff;
                padding: 20px;
                height: 100vh;
            }
            .dashboard-content {
                padding: 20px;
            }
        </style>
    </head>
    <body>
        <%

            ConnectionMysql mysql = new ConnectionMysql("portal_sede_sur");
            ArrayList<User> listUsers = mysql.getUsers();


        %>

        <div class="container-fluid">
            <div class="row">
                <!-- Encabezado -->
                <div class="col-md-12 dashboard-header">
                    <h1>Dashboard</h1>
                </div>
            </div>
            <div class="row">
                <!-- Barra lateral -->
                <div class="col-md-3 dashboard-sidebar">
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link" href="#">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Estadísticas</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="menu.jsp">menu</a>
                        </li>
                    </ul>
                    <input  href="cerrarSesion.jsp" class="login-link" type="button" value="Cerrar Sesión" name="cerrar"  />
                    <a href="cerrarSesion.jsp">Logout</a>
                </div>
                <!-- Contenido -->
                <div class="col-md-9 dashboard-content">
                    <h2>Bienvenido <%=session.getAttribute("email")%> al dashboard</h2>
                    <p>Usuarios del sistema</p>


                    <table class="table" border="1" cellpadding="2">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Id</th>
                                <th>Correo Electrónico</th>
                                <th>Contaseña</th>
                                <th>Nivel de Acceso</th>
                                <th>Fecha de Creación</th>
                                <th>Fecha de Actualización</th>
                                <th>Aplicación de Acceso</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for (int i = 0; i < listUsers.size(); i++) {
                            %>
                            <tr>
                                <td><%=(i + 1)%></td>
                                <td><%=listUsers.get(i).getId()%></td>
                                <td><%=listUsers.get(i).getUserName()%></td>
                                <td><%=listUsers.get(i).getPassword()%></td>
                                <td><%=listUsers.get(i).getAccessLevel()%></td>
                                <td><%=listUsers.get(i).getDateCreated()%></td>
                                <td><%=listUsers.get(i).getUpdateDate() == null 
                                        ? "Sin Actualizar"
                                        : listUsers.get(i).getUpdateDate()%></td>
                                <td><%=listUsers.get(i).getAppAccess()%>
                                <td>
                                    <form action="eliminarUsuario.jsp">
                                        <input 
                                            hidden="true"
                                            type="text" 
                                            name="eliminar" 
                                            id="id" 
                                            value="<%=listUsers.get(i).getId()%>">
                                        <input                                        
                                            class="bottom-100" 
                                            type="submit"                                                                              
                                            value="Eliminar" >
                                    </form>
                                        <br>
                                    <form action="UpdateUser.jsp">
                                        <input 
                                            hidden="true"
                                            type="text" 
                                            name="usuario"                                         
                                            value="<%=listUsers.get(i).toString()%>">
                                        <input                                        
                                            class="bottom-100" 
                                            type="submit"                                                                              
                                            value="Editar" >


                                    </form>

                                </td>


                            </tr>
                            <%}%>
                        </tbody>
                    </table>



                </div>
            </div>
        </div>
    </body>
</html>
