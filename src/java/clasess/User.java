/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package clasess;

import java.sql.Date;

/**
 * The `User` class represents a user with its associated attributes. It
 * contains information about the user's ID, username, password, access level,
 * date of creation, application access, and update date.
 *
 * @author Diego Herrera López
 * @author Kevin Sibaja Granados
 * @author Yordany Navarro Hernandez
 * @author Jonathan Alfaro Herrera
 */
public class User {

    private int id;
    private String userName;
    private String password;
    private String accessLevel;
    private Date dateCreated;
    private String appAccess;
    private Date updateDate;

    /**
     * Default constructor for the `User` class. Initializes the attributes with
     * default values.
     */
    public User() {
        this.userName = "No registrado";
        this.password = "No registrado";
        this.accessLevel = ""; // no hay un nivel de acceso definido
        this.dateCreated = null;
        this.updateDate = null;
        this.appAccess = "No registrado";
    }

    /**
     * * Constructor for the `User` class that accepts parameters. Used for new
     * users.
     *
     * @param id The user's ID.
     * @param userName The user's ID.
     * @param password The password.
     * @param accessLevel The access level.
     * @param dateCreated The date of creation.
     * @param appAccess The application access.
     */
    public User(int id, String userName, String password, String accessLevel, Date dateCreated, String appAccess) {
        this.id = id;
        this.userName = userName;
        this.password = password;
        this.accessLevel = accessLevel;
        this.dateCreated = dateCreated;
        this.appAccess = appAccess;
    }

    /**
     * Constructor for the `User` class that accepts additional update date
     * parameter. Used when the user is already registered and has an update
     * date.
     *
     * @param id The user's ID.
     * @param userName The username.
     * @param password The password.
     * @param acLevel The access level.
     * @param dateCreated The date of creation.
     * @param appAccess The application access.
     * @param dateUpdate The update date.
     */
    public User(int id, String userName, String password, String acLevel,
            Date dateCreated, String appAccess, Date dateUpdate) {
        this.id = id;
        this.userName = userName;
        this.password = password;
        this.accessLevel = acLevel;
        this.dateCreated = dateCreated;
        this.appAccess = appAccess;
        this.updateDate = dateUpdate;
    }

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the userName
     */
    public String getUserName() {
        return userName;
    }

    /**
     * @param userName the userName to set
     */
    public void setUserName(String userName) {
        this.userName = userName;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the accessLevel
     */
    public String getAccessLevel() {
        return accessLevel;
    }

    /**
     * @param accessLevel the accessLevel to set
     */
    public void setAccessLevel(String accessLevel) {
        this.accessLevel = accessLevel;
    }

    /**
     * @return the dateCreated
     */
    public Date getDateCreated() {
        return dateCreated;
    }

    /**
     * @param dateCreated the dateCreated to set
     */
    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    /**
     * @return the appAccess
     */
    public String getAppAccess() {
        return appAccess;
    }

    /**
     * @param appAccess the appAccess to set
     */
    public void setAppAccess(String appAccess) {
        this.appAccess = appAccess;
    }

    /**
     * @return the updateDate
     */
    public Date getUpdateDate() {
        return updateDate;
    }

    /**
     * @param updateDate the updateDate to set
     */
    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    /**
     * Returns the string representation of the `User` object.
     *
     * @return The string representation of the `User` object.
     */
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("User{id=").append(id);
        sb.append(", userName=").append(userName);
        sb.append(", password=").append(password);
        sb.append(", accessLevel=").append(accessLevel);
        sb.append(", dateCreated=").append(dateCreated);
        sb.append(", appAccess=").append(appAccess);
        sb.append('}');
        return sb.toString();
    }

}
