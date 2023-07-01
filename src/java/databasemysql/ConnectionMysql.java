/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package databasemysql;

import clases.Computer;
import clases.LogBookLoans;
import clases.ProjectionKit;
import clases.Speaker;
import clasess.User;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConnectionMysql {

    // Establecer la conexión
    String bd = "world";
    String url = "jdbc:mysql://localhost:3306/";
    String usuario = "root";
    String contraseña = "Supercell07*";
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

    public ArrayList<Speaker> getSpeaker() throws SQLException {
        Statement stmt = cx.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM speaker;");
        ArrayList<Speaker> speakers = new ArrayList<>();
        try {
            while (rs.next()) {

                String code = rs.getString("code");
                String speakerWire = rs.getString("speaker_wire");
                String electricalConnector = rs.getString("electrical_connector");
                String auxiliaryAudio = rs.getString("auxiliary_audio");

                String state = rs.getString("state");

                Speaker speaker = new Speaker(code, speakerWire, electricalConnector, auxiliaryAudio, state);

                speakers.add(speaker);

            }
            return speakers;

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            return null;

        } finally {
            rs.close();

        }
    }

    public ArrayList<Speaker> getSpeaker(String codigo) throws SQLException {
        Statement stmt = cx.createStatement();
        String consulta = "SELECT * FROM speaker where code='" + codigo + "';";
        System.out.println("consulta = " + consulta);
        ResultSet rs = stmt.executeQuery(consulta);
        ArrayList<Speaker> speakers = new ArrayList<>();
        try {
            while (rs.next()) {

                String code = rs.getString("code");
                String speakerWire = rs.getString("speaker_wire");
                String electricalConnector = rs.getString("electrical_connector");
                String auxiliaryAudio = rs.getString("auxiliary_audio");

                String state = rs.getString("state");

                Speaker speaker = new Speaker(code, speakerWire, electricalConnector, auxiliaryAudio, state);

                speakers.add(speaker);

            }
            return speakers;

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            return null;

        } finally {
            rs.close();

        }
    }

    public ArrayList<Computer> getComputer() throws SQLException {
        Statement stmt = cx.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM computer;");
        ArrayList<Computer> computers = new ArrayList<>();
        try {
            while (rs.next()) {

                String code = rs.getString("code");
                String charger = rs.getString("charger");
                String softCase = rs.getString("soft_case");
                String briefcase = rs.getString("briefcase");

                String state = rs.getString("state");

                Computer computer = new Computer(code, charger, softCase, briefcase, state);

                computers.add(computer);

            }
            return computers;

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            return null;

        } finally {
            rs.close();

        }
    }

    public ArrayList<Computer> getComputer(String codeSearch) throws SQLException {
        Statement stmt = cx.createStatement();
        String consulta = "SELECT * FROM computer where code='" + codeSearch + "';";
        System.out.println("consulta = " + consulta);
        ResultSet rs = stmt.executeQuery(consulta);
        ArrayList<Computer> computers = new ArrayList<>();
        try {
            while (rs.next()) {

                String code = rs.getString("code");
                String charger = rs.getString("charger");
                String softCase = rs.getString("soft_case");
                String briefcase = rs.getString("briefcase");

                String state = rs.getString("state");

                Computer computer = new Computer(code, charger, softCase, briefcase, state);

                computers.add(computer);

            }
            return computers;

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            return null;

        } finally {
            rs.close();

        }
    }

    public ArrayList<ProjectionKit> getProjectionKit() throws SQLException {
        Statement stmt = cx.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM projection_kit;");
        ArrayList<ProjectionKit> projections = new ArrayList<>();
        try {
            while (rs.next()) {

                String code = rs.getString("code");
                String projectorCase = rs.getString("projector_case");
                String electricityWire = rs.getString("electricity_wire");
                String VGAConnector = rs.getString("VGA_connector");
                String HDMIConnector = rs.getString("HDMI_connector");
                String projectorControl = rs.getString("projector_control");
                String batteries = rs.getString("batteries");
                String extension = rs.getString("extension");
                String powerStrip = rs.getString("power_strip");
                String plasticBox = rs.getString("plastic_box");
                String state = rs.getString("state");

                ProjectionKit projection = new ProjectionKit(code, projectorCase, electricityWire,
                        VGAConnector, HDMIConnector, projectorControl, batteries, extension, powerStrip, plasticBox, state);

                projections.add(projection);

            }
            return projections;

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            return null;

        } finally {
            rs.close();

        }
    }

    public ArrayList<ProjectionKit> getProjectionKit(String codeSearch) throws SQLException {
        Statement stmt = cx.createStatement();
        String consulta = "SELECT * FROM projection_kit where code='" + codeSearch + "';";
        System.out.println("consulta = " + consulta);
        ResultSet rs = stmt.executeQuery(consulta);
        ArrayList<ProjectionKit> projections = new ArrayList<>();
        try {
            while (rs.next()) {

                String code = rs.getString("code");
                String projectorCase = rs.getString("projector_case");
                String electricityWire = rs.getString("electricity_wire");
                String VGAConnector = rs.getString("VGA_connector");
                String HDMIConnector = rs.getString("HDMI_connector");
                String projectorControl = rs.getString("projector_control");
                String batteries = rs.getString("batteries");
                String extension = rs.getString("extension");
                String powerStrip = rs.getString("power_strip");
                String plasticBox = rs.getString("plastic_box");
                String state = rs.getString("state");

                ProjectionKit projection = new ProjectionKit(code, projectorCase, electricityWire,
                        VGAConnector, HDMIConnector, projectorControl, batteries, extension, powerStrip, plasticBox, state);

                projections.add(projection);

            }
            return projections;

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            return null;

        } finally {
            rs.close();

        }
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
                        dateCreated, appAccess, dateUpdate);
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

    public ArrayList<LogBookLoans> getLogBookLoans() throws SQLException {
        Statement stmt = cx.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM logbook_loans;");
        ArrayList<LogBookLoans> logBookLoans = new ArrayList<>();
        try {
            while (rs.next()) {

                int id = Integer.parseInt(rs.getString("id"));
                String code = rs.getString("code");
                String ucrCard = rs.getString("identification");
                String fullName = rs.getString("full_name");
                String typeUser = rs.getString("type_user");
                String career = rs.getString("career");
                String nameAccessory = rs.getString("name_accessory");
                Date loanDate = rs.getDate("loan_date");
                Date returnDate = rs.getDate("return_date");
                String category = rs.getString("category");
                LogBookLoans logBookLoan = new LogBookLoans(id, code, ucrCard, fullName,
                        typeUser, career, nameAccessory, loanDate, returnDate, category);

                logBookLoans.add(logBookLoan);

            }
            return logBookLoans;

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            return null;

        } finally {
            rs.close();

        }
    }

    public ArrayList<LogBookLoans> getHistoryLoans() throws SQLException {
        Statement stmt = cx.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM loan_history;");
        ArrayList<LogBookLoans> logBookLoans = new ArrayList<>();
        try {
            while (rs.next()) {

                int id = Integer.parseInt(rs.getString("id"));
                String code = rs.getString("code");
                String ucrCard = rs.getString("identification");
                String fullName = rs.getString("full_name");
                String typeUser = rs.getString("type_user");
                String career = rs.getString("career");
                String nameAccessory = rs.getString("name_accessory");
                Date loanDate = rs.getDate("loan_date");
                Date returnDate = rs.getDate("return_date");
                String category = rs.getString("category");
                LogBookLoans logBookLoan = new LogBookLoans(id, code, ucrCard, fullName,
                        typeUser, career, nameAccessory, loanDate, returnDate, category);

                logBookLoans.add(logBookLoan);

            }
            return logBookLoans;

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
        } catch (Exception e) {
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
            return false;
        }

    }

    public boolean deleteSpeaker(String code) {
        try {

            String query = "delete from speaker where code = ?";
            PreparedStatement preparedStmt = cx.prepareStatement(query);
            preparedStmt.setString(1, code);

            // execute the preparedstatement
            preparedStmt.execute();

            cx.close();
            return true;
        } catch (Exception e) {
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
            return false;
        }

    }

    public boolean deleteComputer(String code) {
        try {

            String query = "delete from computer where code = ?";
            PreparedStatement preparedStmt = cx.prepareStatement(query);
            preparedStmt.setString(1, code);

            // execute the preparedstatement
            preparedStmt.execute();

            cx.close();
            return true;
        } catch (Exception e) {
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
            return false;
        }

    }

    public boolean deleteProjectionKit(String code) {
        try {

            String query = "delete from projection_kit where code = ?";
            PreparedStatement preparedStmt = cx.prepareStatement(query);
            preparedStmt.setString(1, code);

            // execute the preparedstatement
            preparedStmt.execute();

            cx.close();
            return true;
        } catch (Exception e) {
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
            return false;
        }

    }

    public boolean deleteLoan(int id) {
        try {

            String query = "delete from logbook_loans where id = ?";
            PreparedStatement preparedStmt = cx.prepareStatement(query);
            preparedStmt.setInt(1, id);

            // execute the preparedstatement
            preparedStmt.execute();

      //      cx.close();
            return true;
        } catch (Exception e) {
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
                    + "     WHERE id = " + user.getId() + ";";

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
        } catch (Exception e) {
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
            return false;
        }

    }
    public void updateStatePres(String table, String code){
        try {
            String query = "UPDATE " + table + " SET state = ? "
                    + "WHERE code = ?;";
            
            PreparedStatement preparedStmt = cx.prepareStatement(query);
            preparedStmt.setString(1, "2");
            preparedStmt.setString(2, code);
            preparedStmt.executeUpdate();
            cx.close();
        } catch (SQLException e) {
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
        }
    }
     public void updateStateDis(String table, String code){
        try {
            String query = "UPDATE " + table + " SET state = ? "
                    + "WHERE code = ?;";
            
            PreparedStatement preparedStmt = cx.prepareStatement(query);
            preparedStmt.setString(1, "1");
            preparedStmt.setString(2, code);
            preparedStmt.executeUpdate();
            cx.close();
        } catch (SQLException e) {
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
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

    public boolean insertLoans(String code, String identification, String fullName, String typeUser,
            String career, String nameAccessory, java.sql.Timestamp loanDate, java.sql.Timestamp returnDate, String category) {

        System.out.println("date: " + loanDate);
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm");
        try {

            // the mysql insert statement
            String query = " insert into logbook_loans (code, identification, full_name, type_user, career, name_accessory, loan_date, return_date, category)"
                    + " values (?, ?, ?, ?, ?, ?, ?, ?, ?)";

            // create the mysql insert preparedstatement
            PreparedStatement preparedStmt = cx.prepareStatement(query);
            preparedStmt.setString(1, code);
            preparedStmt.setString(2, identification);
            preparedStmt.setString(3, fullName);
            preparedStmt.setString(4, typeUser);
            preparedStmt.setString(5, career);
            preparedStmt.setString(6, nameAccessory);

            preparedStmt.setTimestamp(7, loanDate);
            preparedStmt.setTimestamp(8, returnDate);
            preparedStmt.setString(9, category);

            // execute the preparedstatement
            preparedStmt.executeUpdate();

         //   cx.close();
            return true;
        } catch (SQLException ex) {
            System.out.println("Fallo la inserción" + ex.getMessage());
        }

        return false;
    }

    public boolean insertHistoryLoans(String code, String identification, String fullName, String typeUser,
            String career, String nameAccessory, java.sql.Timestamp loanDate, java.sql.Timestamp returnDate, String category) {

        try {

            // the mysql insert statement
            String query = " insert into loan_history (code, identification, full_name, type_user, career, name_accessory, loan_date, return_date, category)"
                    + " values (?, ?, ?, ?, ?, ?, ?, ?, ?)";

            // create the mysql insert preparedstatement
            PreparedStatement preparedStmt = cx.prepareStatement(query);
            preparedStmt.setString(1, code);
            preparedStmt.setString(2, identification);
            preparedStmt.setString(3, fullName);
            preparedStmt.setString(4, typeUser);
            preparedStmt.setString(5, career);
            preparedStmt.setString(6, nameAccessory);

            preparedStmt.setTimestamp(7, loanDate);
            preparedStmt.setTimestamp(8, returnDate);
            preparedStmt.setString(9, category);
            // execute the preparedstatement
            preparedStmt.executeUpdate();

            //   cx.close();
            return true;
        } catch (SQLException ex) {
            System.out.println("Fallo la inserción" + ex.getMessage());
        }

        return false;
    }

    public boolean insertSpeaker(String code, String speakerWire, String electricalConnector, String auxiliaryAudio) {

        try {

            // the mysql insert statement
            String query = " insert into speaker (code,speaker_wire,electrical_connector,auxiliary_audio,state)"
                    + " values (?, ?, ?, ?, ?)";

            // create the mysql insert preparedstatement
            PreparedStatement preparedStmt = cx.prepareStatement(query);
            preparedStmt.setString(1, code);
            preparedStmt.setString(2, speakerWire);
            preparedStmt.setString(3, electricalConnector);
            preparedStmt.setString(4, auxiliaryAudio);
            preparedStmt.setString(5, "1");

            // execute the preparedstatement
            preparedStmt.execute();

            cx.close();
            return true;
        } catch (Exception ex) {
            System.out.println("Fallo la inserción" + ex.getMessage());
        }

        return false;
    }

    public boolean insertComputer(String code, String chargerComputer, String softCaseComputer, String briefcaseComputer) {

        try {

            // the mysql insert statement
            String query = " insert into computer (code,charger,soft_case,briefcase,state)"
                    + " values (?, ?, ?, ?, ?)";

            // create the mysql insert preparedstatement
            PreparedStatement preparedStmt = cx.prepareStatement(query);
            preparedStmt.setString(1, code);
            preparedStmt.setString(2, chargerComputer);
            preparedStmt.setString(3, softCaseComputer);
            preparedStmt.setString(4, briefcaseComputer);
            preparedStmt.setString(5, "1");

            // execute the preparedstatement
            preparedStmt.execute();

            cx.close();
            return true;
        } catch (Exception ex) {
            System.out.println("Fallo la inserción" + ex.getMessage());
        }

        return false;
    }

    public boolean insertProjectionKit(String code, String projectionCase,
            String electricityWire, String VGAConnector, String HDMIConnector,
            String projectionControl, String battery, String extension, String powerStrip, String plasticBox) {

        try {

            // the mysql insert statement
            String query = " insert into projection_kit (code,projector_case,electricity_wire,VGA_connector,HDMI_connector,projector_control,batteries,extension,power_strip,plastic_box,state)"
                    + " values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            // create the mysql insert preparedstatement
            PreparedStatement preparedStmt = cx.prepareStatement(query);
            preparedStmt.setString(1, code);
            preparedStmt.setString(2, projectionCase);
            preparedStmt.setString(3, electricityWire);
            preparedStmt.setString(4, VGAConnector);
            preparedStmt.setString(5, HDMIConnector);
            preparedStmt.setString(6, projectionControl);
            preparedStmt.setString(7, battery);
            preparedStmt.setString(8, extension);
            preparedStmt.setString(9, powerStrip);
            preparedStmt.setString(10, plasticBox);
            preparedStmt.setString(11, "1");

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
