/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package databasemysql;

import clasess.User;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConnectionMysql {

    // Establecer la conexión
    String bd = "world";
    String url = "jdbc:mysql://localhost:3306/";
    String usuario = "root";
    String contraseña = "Racataca2305.";
    String driver = "com.mysql.cj.jdbc.Driver";
    Connection cx;

    public ConnectionMysql(String bd) {
        this.bd = bd;
        cx = conectar();
    }

    public Connection conectar() {
        try {
            Class.forName(driver);
            try {
                cx = DriverManager.getConnection(url + bd, usuario, contraseña);
                System.out.println("ingreso " + bd);
            } catch (SQLException ex) {

                Logger.getLogger(ConnectionMysql.class.getName()).log(Level.SEVERE, null, ex);

            }
        } catch (ClassNotFoundException ex) {
            System.out.println("no ingreso " + bd);
            Logger.getLogger(ConnectionMysql.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cx;

    }

    public ArrayList<User> getUsers() throws SQLException {
        Statement stmt = cx.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM users;");
        ArrayList<User> users = new ArrayList<>();
        try {
            while (rs.next()) {
                int id = rs.getInt("id");
                String userName = rs.getString("user_name");
                String password = rs.getString("password");
                String acLevel = rs.getString("access_level");
                Date dateCreated = rs.getDate("date_created");
                String appAccess = rs.getString("app_access");
                 Date dateUpdate = rs.getDate("date_modify");

                User user = new User(id, userName, password, acLevel,
                        dateCreated, appAccess,dateUpdate);
                users.add(user);

            }
            return users;

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            return null;

        } finally {
            rs.close();

        }
    }

    public boolean deleteUser(int id) {
        try {        

            String query = "delete from users where id = ?";
            PreparedStatement preparedStmt = cx.prepareStatement(query);
            preparedStmt.setInt(1, id);

            // execute the preparedstatement
            preparedStmt.execute();
          
            cx.close();
            return true;
        } 
        catch (Exception e) {
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
            return false;
        }

    }

     public boolean updateUser(User user) {
         System.out.println(user.toString());
         Calendar calendar = Calendar.getInstance();
            java.sql.Date updateDate = new java.sql.Date(calendar.getTime().getTime());
        try { 

            String query = "UPDATE users "
                    + "     SET user_name = ?, password= ?, access_level= ?,  app_access= ?,  date_modify= ?"
                    + "     WHERE id = "+user.getId()+";";
            
            PreparedStatement preparedStmt = cx.prepareStatement(query);
            
            preparedStmt.setString(1, user.getUserName());
            preparedStmt.setString(2, user.getPassword());
            preparedStmt.setString(3, user.getAccessLevel());            
            preparedStmt.setString(4, user.getAppAccess());
             preparedStmt.setDate(5, updateDate);

            // execute the preparedstatement
            preparedStmt.executeUpdate();
          
            cx.close();
            return true;
        } 
        catch (Exception e) {
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
            return false;
        }

    }
    public boolean userValidation(String userName, String password) throws SQLException {
        cx = conectar();
        Statement stmt = cx.createStatement();
        String consulta = "select * from users where user_name ='" + userName.trim() + "' and password = '" + password.trim() + "';";
        System.out.println(consulta);
        ResultSet rs = stmt.executeQuery(consulta);

        try {
            if (rs.next()) {
                return true;
            } else {
                return false;
            }
        } finally {
            try {
                rs.close();
            } catch (SQLException ignore) {
                System.out.println("Exeption on login: " + ignore.getMessage());
            }
        }

    }

    public boolean insertUser(String userName, String password, String level) {

        try {
            Calendar calendar = Calendar.getInstance();
            java.sql.Date startDate = new java.sql.Date(calendar.getTime().getTime());

            // the mysql insert statement
            String query = " insert into users (user_name, password, access_level, date_created, app_access)"
                    + " values (?, ?, ?, ?, ?)";

            // create the mysql insert preparedstatement
            PreparedStatement preparedStmt = cx.prepareStatement(query);
            preparedStmt.setString(1, userName);
            preparedStmt.setString(2, password);
            preparedStmt.setString(3, level);
            preparedStmt.setDate(4, startDate);
            preparedStmt.setString(5, "Hotel");

            // execute the preparedstatement
            preparedStmt.execute();

            cx.close();
            return true;
        } catch (Exception ex) {
            System.out.println("Fallo la inserción" + ex.getMessage());
        }

        return false;
    }

}
