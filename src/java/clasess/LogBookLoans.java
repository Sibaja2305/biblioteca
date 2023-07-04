package clases;

import java.util.Date;

/**
 *
 * @author yorda
 */
public class LogBookLoans  {

    private int id;
    private String code;
    private String ucrCard;
    private String fullName;
    private String typeUser;
    private String career;
    private String nameAccesory;
    private Date loanDate;
    private Date returnDate;
    private String category;

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

    public LogBookLoans(String fullName) {
        this.fullName = fullName;
    }
    

    public LogBookLoans(int id, String code, String ucrCard, String fullName, String typeUser, String career, String nameAccesory, Date loanDate, Date returnDate, String category) {
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
    public void setLoanDate(Date loanDate) {
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
    public void setReturnDate(Date returnDate) {
        this.returnDate = returnDate;
    }

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
