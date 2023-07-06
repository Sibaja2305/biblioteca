package clases;

import java.util.Date;

/**
 * The `LogBookLoans` class represents a LogBookLoans object.
 *
 * @author Diego Herrera López
 * @author Kevin Sibaja Granados
 * @author Yordany Navarro Hernandez
 * @author Jonathan Alfaro Herrera
 */
public class LogBookLoans {
// Class attributes

    private int id;
    private String code;
    private String ucrCard;
    private String fullName;
    private String typeUser;
    private String career;
    private String nameAccesory;
    private java.sql.Timestamp loanDate;
    private java.sql.Timestamp returnDate;
    private String category;

    /**
     * Default constructor for the `LogBookLoans` class. Initializes the
     * attributes with default values.
     */
    public LogBookLoans() {
        this.code = "No registrado";
        this.ucrCard = "No";
        this.fullName = "No registrado";
        this.typeUser = "No";
        this.career = "No registrado";
        this.nameAccesory = "No registrado";
        this.category = "No registrado";
        this.loanDate = null;
        this.returnDate = null;

    }

    /**
     * Constructor for the `LogBookLoans` class that accepts a full name
     * parameter.
     *
     * @param fullName The full name of the user who made a loan.
     */
    public LogBookLoans(String fullName) {
        this.fullName = fullName;
    }

    /**
     * * Constructor for the `LogBookLoans` class that accepts all parameters.
     *
     * @param id The ID of the loan entry.
     * @param code code of the accessory to lend
     * @param ucrCard The UCR card of the person requesting the loan.
     * @param fullName The full name of the person requesting the loan.
     * @param typeUser The type of person requesting the loan.
     * @param career The full name of the person requesting the loan.
     * @param nameAccesory The name of the accessory being loaned.
     * @param loanDate The date of the loan.
     * @param returnDate The date of the loan.
     * @param category The category of the accessory being loaned.
     */
    public LogBookLoans(int id, String code, String ucrCard, String fullName, String typeUser, String career, String nameAccesory, java.sql.Timestamp loanDate, java.sql.Timestamp returnDate, String category) {
        this.id = id;
        this.code = code;
        this.ucrCard = ucrCard;
        this.fullName = fullName;
        this.typeUser = typeUser;
        this.career = career;
        this.nameAccesory = nameAccesory;
        this.loanDate = loanDate;
        this.returnDate = returnDate;
        this.category = category;
    }

    /**
     * @return the category
     */
    public String getCategory() {
        return category;
    }

    /**
     * @param category the category to set
     */
    public void setCategory(String category) {
        this.category = category;
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
     * @return the code
     */
    public String getCode() {
        return code;
    }

    /**
     * @param code the code to set
     */
    public void setCode(String code) {
        this.code = code;
    }

    /**
     * @return the ucrCard
     */
    public String getUcrCard() {
        return ucrCard;
    }

    /**
     * @param ucrCard the ucrCard to set
     */
    public void setUcrCard(String ucrCard) {
        this.ucrCard = ucrCard;
    }

    /**
     * @return the fullName
     */
    public String getFullName() {
        return fullName;
    }

    /**
     * @param fullName the fullName to set
     */
    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    /**
     * @return the typeUser
     */
    public String getTypeUser() {
        return typeUser;
    }

    /**
     * @param typeUser the typeUser to set
     */
    public void setTypeUser(String typeUser) {
        this.typeUser = typeUser;
    }

    /**
     * @return the career
     */
    public String getCareer() {
        return career;
    }

    /**
     * @param career the career to set
     */
    public void setCareer(String career) {
        this.career = career;
    }

    /**
     * @return the nameAccesory
     */
    public String getNameAccesory() {
        return nameAccesory;
    }

    /**
     * @param nameAccesory the nameAccesory to set
     */
    public void setNameAccesory(String nameAccesory) {
        this.nameAccesory = nameAccesory;
    }

    /**
     * @return the loanDate
     */
    public Date getLoanDate() {
        return loanDate;
    }

    /**
     * @param loanDate the loanDate to set
     */
    public void setLoanDate(java.sql.Timestamp loanDate) {
        this.loanDate = loanDate;
    }

    /**
     * @return the returnDate
     */
    public Date getReturnDate() {
        return returnDate;
    }

    /**
     * @param returnDate the returnDate to set
     */
    public void setReturnDate(java.sql.Timestamp returnDate) {
        this.returnDate = returnDate;
    }

    /**
     * Returns a string representation of the `LogBookLoans` instance.
     *
     *
     * @return A string representing the `LogBookLoans` instance.
     */
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("LogBookLoans{id=").append(id);
        sb.append(", code=").append(code);
        sb.append(", ucrCard=").append(ucrCard);
        sb.append(", fullName=").append(fullName);
        sb.append(", typeUser=").append(typeUser);
        sb.append(", career=").append(career);
        sb.append(", nameAccesory=").append(nameAccesory);
        sb.append(", loanDate=").append(loanDate);
        sb.append(", returnDate=").append(returnDate);
        sb.append(", category=").append(category);
        sb.append('}');
        return sb.toString();
    }

}
