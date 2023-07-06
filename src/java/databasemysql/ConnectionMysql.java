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
    String contraseña = "Racataca2305.";
    String driver = "com.mysql.cj.jdbc.Driver";
    Connection cx;

    public ConnectionMysql(String bd) {
        this.bd = bd;
        cx = conectar();
    }

    /**
     * This method establishes the connection to the database.
     *
     * @return returns an instance of the Connection class that represents the
     * established connection.
     */
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

    /**
     * Get the list of speakers from the database.
     *
     * @return returns a list of Speaker type objects with the speakers obtained
     * from the database.
     * @throws java.sql.SQLException if an error occurs while executing the SQL
     * query.
     */
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

    /**
     * This method get a list of speakers according to a code.
     *
     * @param codigo is the speaker code to look for.
     * @return returns a list of objects of type Speaker that match the given
     * code.
     * @throws java.sql.SQLException if an error occurs while executing the SQL
     * query.
     */
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

    /**
     * Gets a list of Computer objects from the database.
     *
     * @return returns a list of Computer type objects with the computers
     * obtained from the database.
     * @throws java.sql.SQLException if an error occurs while executing the SQL
     * query
     */
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

    /**
     * This method get a list of speakers according to a code.
     *
     * @param codeSearch is the computer code to look for.
     * @return returns a list of objects of type Computer that match the given
     * code.
     * @throws java.sql.SQLException if an error occurs while executing the SQL
     * query.
     */
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

    /**
     * Gets a list of ProjectionKit objects from the database.
     *
     * @return returns a list of ProjectionKit type objects with the projection
     * kit obtained from the database.
     * @throws java.sql.SQLException if an error occurs while executing the SQL
     * query.
     */
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

    /**
     * This method get a list of projection kit according to a code.
     *
     * @param codeSearch is the projection kit code to look for.
     * @return returns a list of objects of type ProjetionKit that match the
     * given code.
     * @throws java.sql.SQLException if an error occurs while executing the SQL
     * query.
     */
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

    /**
     * Gets a list of User objects and adds the user from the database to an
     * ArrayList.
     *
     * @return returns an ArrayList of User objects with the data retrieved from
     * the database.
     * @throws java.sql.SQLException if an error occurs while executing the SQL
     * query.
     */
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

    /**
     * Gets a list of LogBook Loans objects and adds the loan items from the
     * database to an ArrayList.
     *
     * @return returns an ArrayList of LogBookLoans objects with the loan data
     * retrieved from the database.
     * @throws java.sql.SQLException if an error occurs while executing the SQL
     * query.
     */
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
                java.sql.Timestamp loanDate = rs.getTimestamp("loan_date");
                java.sql.Timestamp returnDate = rs.getTimestamp("return_date");
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

    /**
     * Gets a list of LogBookLoans objects that match a search key.
     *
     * @param keySearch the search key to filter logbook_loans logs.
     * @return a list of LogBookLoans objects that match the search key.
     * @throws SQLException if an error occurs while executing the SQL query.
     */
    public ArrayList<LogBookLoans> getLogBookLoans(String keySearch) throws SQLException {
        Statement stmt = cx.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM logbook_loans where identification='" + keySearch + "';");
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
                java.sql.Timestamp loanDate = rs.getTimestamp("loan_date");
                java.sql.Timestamp returnDate = rs.getTimestamp("return_date");
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

    /**
     * Gets a list of LogBook Loans objects with the elements of the history of
     * loans from the database and adds to an Arraylist to the base
     *
     * @return returns an ArrayList with the history loan data retrieved from
     * the database.
     * @throws java.sql.SQLException if an error occurs while executing the SQL
     * query.
     */
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
                java.sql.Timestamp loanDate = rs.getTimestamp("loan_date");
                java.sql.Timestamp returnDate = rs.getTimestamp("return_date");
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

    /**
     * Gets a list of LogBookLoans objects that correspond to a loan history in
     * a specified category.
     *
     * @param categorySearch the search category to filter the loan_history
     * records.
     * @return a list of LogBookLoans objects that correspond to the loan
     * history in the specified category.
     * @throws SQLException if an error occurs while executing the SQL query.
     */
    public ArrayList<LogBookLoans> getHistoryLoans(String categorySearch) throws SQLException {
        Statement stmt = cx.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM loan_history where category='" + categorySearch + "';");
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
                java.sql.Timestamp loanDate = rs.getTimestamp("loan_date");
                java.sql.Timestamp returnDate = rs.getTimestamp("return_date");
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

    /**
     * This method delete users from the database.
     *
     * @param id is ID of the user to delete.
     * @return returns true if the user was deleted successfully, false if an
     * error occurred.
     */
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

    /**
     * This method delete speakers from the database.
     *
     * @param code is the code of the speaker to delete.
     * @return returns true if the speaker was deleted successfully, false if an
     * error occurred.
     */
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

    /**
     * This method delete computers from the database.
     *
     * @param code is the code of the computer to delete.
     * @return returns true if the computer was deleted successfully, false if
     * an error occurred.
     */
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

    /**
     * This method delete projetion kits from the database.
     *
     * @param code is the code of the projection kit to delete.
     * @return returns true if the projection kit was deleted successfully,
     * false if an error occurred.
     */
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

    /**
     * This method delete loans from the database.
     *
     * @param id is the ID of the loan to delete.
     * @return returns true if the loan was deleted successfully, false if an
     * error occurred.
     */
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

    /**
     * Method that is responsible for updating the details of a user in the
     * database. This method is used to modify the details of an existing user
     * in the "users" table.
     *
     * @param user The User object containing the new user details.
     * @return true if the user update in the database was successful, false
     * otherwise.
     */
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

    /**
     * Updates the status of a record in a specific table in the database. This
     * method is used to change the status of a record in a given table by
     * setting the status value to "2".
     *
     * @param table The table on which the update will be performed.
     * @param code The unique code that identifies the record to update.
     */
    public void updateStatePres(String table, String code) {
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

    /**
     * Method that is responsible for updating the status of a record in a
     * specific table of the database. This method is used to change the status
     * of a record in a given table by setting the status value to "1".
     *
     * @param table The table on which the update will be performed.
     * @param code The unique code that identifies the record to update.
     */
    public void updateStateDis(String table, String code) {
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

    /**
     * Method that is responsible for validating user credentials in the
     * database. This method is used to verify if the user credentials (username
     * and password) are valid.
     *
     * @param userName The username to validate.
     * @param password The password to validate.
     * @return true if the credentials are valid, false otherwise.
     * @throws SQLException If an error occurs while executing the SQL query to
     * validate the credentials against the database.
     */
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

    /**
     * Method that inserts a new user in the database. This method is used to
     * register a new user in the system, storing their information in the
     * "users" table.
     *
     * @param userName The username of the new user. It must be unique in the
     * database.
     * @param password The password of the new user.
     * @param level The level of access that the user will have
     * @return true if the insert of the record into the database was
     * successful, false otherwise.
     */
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

    /**
     * Method that inserts a loan record into the log record in the database.
     * This method is used to register a new accessory loan in the system,
     * storing its information in the "logbook_loans" table.
     *
     * @param code The unique code that identifies the loan.
     * @param identification The identification of the user who makes the loan.
     * @param fullName The full name of the user who makes the loan.
     * @param typeUser The type of user who makes the loan student or teacher
     * @param career La carrera o área de estudio del usuario que realiza el
     * préstamo.
     * @param nameAccessory The name of the accessory being borrowed.
     * @param loanDate The date and time of the loan.
     * @param returnDate The date and time of return of the accessory.
     * @param category The date and time of return of the accessory.
     * @return true if the insert of the record into the database was
     * successful, false otherwise.
     */
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

    /**
     * Method that inserts a loan history record into the database. This method
     * is used to register a new accessory loan in the system, storing its
     * information in the "loan_history" table.
     *
     * @param code The unique code that identifies the loan.
     * @param identification The identification of the user who makes the loan.
     * @param fullName The full name of the user who makes the loan.
     * @param typeUser The type of user who makes the loan
     * @param career The career or area of study of the user who makes the loan.
     * @param nameAccessory The name of the accessory being borrowed.
     * @param loanDate The date and time of the loan.
     * @param returnDate The date and time of return of the accessory.
     * @param category The accessory category
     * @return true if the insert of the record into the database was
     * successful, false otherwise.
     */
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

    /**
     * Method that inserts a speaker record into the database. This method is
     * used to register a new speaker in the system, storing its information in
     * the "speaker" table.
     *
     * @param code The unique code that identifies the speaker.
     * @param speakerWire The cable used to connect the speaker
     * @param electricalConnector The electrical connector used to power the
     * speaker
     * @param auxiliaryAudio auxiliary audio input used to connect external
     * devices to the speaker
     * @return true if the insert of the record into the database was
     * successful, false otherwise.
     */
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

    /**
     * A method that inserts a computer record into the database. This method is
     * used to register a new computer in the system, storing its information in
     * the "computer" table.
     *
     * @param code The unique code that identifies the computer. It must be a
     * non-null value and unique in the database.
     * @param chargerComputer The charger used to power the computer. It can be
     * a description or a specific charger model.
     * @param softCaseComputer The soft case used to protect and transport the
     * computer. It can be a description or a specific case model.
     * @param briefcaseComputer The hard case used to store the computer.
     * @return true if the insert of the record into the database was
     * successful, false otherwise.
     */
    public boolean insertComputer(String code, String chargerComputer, String softCaseComputer, String briefcaseComputer) {

        try {

            // the mysql insert statementompute
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

    /**
     * The insertProjectionKit method is responsible for inserting a record into
     * a database table called projection_kit.
     *
     * @param code projection kit code
     * @param projectionCase projector case type
     * @param electricityWire electricity cable
     * @param VGAConnector vga connector
     * @param HDMIConnector hdmi connector
     * @param projectionControl projector control
     * @param battery batteries
     * @param extension extension
     * @param powerStrip power strip
     * @param plasticBox plastic box
     * @return true if the insert was successful, false otherwise
     */
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
