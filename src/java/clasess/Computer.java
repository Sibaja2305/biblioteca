package clases;

/**
 *
 * @author yorda
 */
public class Computer {

    private String code;
    private String charger;
    private String softCase;
    private String briefcase;
    private String state;

    public Computer() {
        this.code = "No";
        this.charger = "";
        this.softCase = "";
        this.briefcase = "";
        this.state = "";
    }

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
