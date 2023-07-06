package clases;

/**
 * The `Computer` class represents a computer object.
 *
 * @author Diego Herrera López
 * @author Kevin Sibaja Granados
 * @author Yordany Navarro Hernandez
 * @author Jonathan Alfaro Herrera
 */
public class Computer {
// Class attributes
    private String code;
    private String charger;
    private String softCase;
    private String briefcase;
    private String state;
/**
     * Default constructor for the `Computer` class.
     * Initializes the attributes with default values.
     */
    public Computer() {
        this.code = "No";
        this.charger = "";
        this.softCase = "";
        this.briefcase = "";
        this.state = "";
    }
/**
 *  Constructor for the `Computer` class that accepts parameters.
 * @param code code The computer's code.
 * @param charger charger The computer's charger.
 * @param softCase softCase The computer's soft case.x
 * @param briefcase briefcase The computer's briefcase.
 * @param state state The computer's state.
 */
    public Computer(String code, String charger, String softCase, String briefcase, String state) {
        this.code = code;
        this.charger = charger;
        this.softCase = softCase;
        this.briefcase = briefcase;
        this.state = state;
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
     * @return the charger
     */
    public String getCharger() {
        return charger;
    }

    /**
     * @param charger the charger to set
     */
    public void setCharger(String charger) {
        this.charger = charger;
    }

    /**
     * @return the softCase
     */
    public String getSoftCase() {
        return softCase;
    }

    /**
     * @param softCase the softCase to set
     */
    public void setSoftCase(String softCase) {
        this.softCase = softCase;
    }

    /**
     * @return the briefcase
     */
    public String getBriefcase() {
        return briefcase;
    }

    /**
     * @param briefcase the briefcase to set
     */
    public void setBriefcase(String briefcase) {
        this.briefcase = briefcase;
    }

    /**
     * @return the state
     */
    public String getState() {
        return state;
    }

    /**
     * @param state the state to set
     */
    public void setState(String state) {
        this.state = state;
    }
/**
 * Returns a string representation of the `Computer` instance.
 * @return 
 */
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Computer{code=").append(code);
        sb.append(", charger=").append(charger);
        sb.append(", softCase=").append(softCase);
        sb.append(", briefcase=").append(briefcase);
        sb.append(", state=").append(state);
        sb.append('}');
        return sb.toString();
    }

}
