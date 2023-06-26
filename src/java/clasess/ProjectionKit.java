package clases;

/**
 *
 * @author yorda
 */
public class ProjectionKit {

    private String code;
    private String projectorCase;
    private String electricityWire;
    private String VGAConnector;
    private String HDMIConnector;
    private String projectorControl;
    private String batteries;
    private String extension;
    private String powerStrip;
    private String plasticBox;
    private String state;

    public ProjectionKit() {
        this.code = "No";
        this.projectorCase = "";
        this.electricityWire = "";
        this.VGAConnector = "";
        this.HDMIConnector = "";
        this.projectorControl = "";
        this.batteries = "";
        this.extension = "";
        this.powerStrip = "";
        this.plasticBox = "";
        this.state = "";

    }

    public ProjectionKit(String code, String projectorCase, String electricityWire, String VGAConnector, String HDMIConnector, String projectorControl, String batteries, String extension, String powerStrip, String plasticBox, String state) {
        this.code = code;
        this.projectorCase = projectorCase;
        this.electricityWire = electricityWire;
        this.VGAConnector = VGAConnector;
        this.HDMIConnector = HDMIConnector;
        this.projectorControl = projectorControl;
        this.batteries = batteries;
        this.extension = extension;
        this.powerStrip = powerStrip;
        this.plasticBox = plasticBox;
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
     * @return the projectorCase
     */
    public String getProjectorCase() {
        return projectorCase;
    }

    /**
     * @param projectorCase the projectorCase to set
     */
    public void setProjectorCase(String projectorCase) {
        this.projectorCase = projectorCase;
    }

    /**
     * @return the electricityWire
     */
    public String getElectricityWire() {
        return electricityWire;
    }

    /**
     * @param electricityWire the electricityWire to set
     */
    public void setElectricityWire(String electricityWire) {
        this.electricityWire = electricityWire;
    }

    /**
     * @return the VGAConnector
     */
    public String getVGAConnector() {
        return VGAConnector;
    }

    /**
     * @param VGAConnector the VGAConnector to set
     */
    public void setVGAConnector(String VGAConnector) {
        this.VGAConnector = VGAConnector;
    }

    /**
     * @return the HDMIConnector
     */
    public String getHDMIConnector() {
        return HDMIConnector;
    }

    /**
     * @param HDMIConnector the HDMIConnector to set
     */
    public void setHDMIConnector(String HDMIConnector) {
        this.HDMIConnector = HDMIConnector;
    }

    /**
     * @return the projectorControl
     */
    public String getProjectorControl() {
        return projectorControl;
    }

    /**
     * @param projectorControl the projectorControl to set
     */
    public void setProjectorControl(String projectorControl) {
        this.projectorControl = projectorControl;
    }

    /**
     * @return the batteries
     */
    public String getBatteries() {
        return batteries;
    }

    /**
     * @param batteries the batteries to set
     */
    public void setBatteries(String batteries) {
        this.batteries = batteries;
    }

    /**
     * @return the extension
     */
    public String getExtension() {
        return extension;
    }

    /**
     * @param extension the extension to set
     */
    public void setExtension(String extension) {
        this.extension = extension;
    }

    /**
     * @return the powerStrip
     */
    public String getPowerStrip() {
        return powerStrip;
    }

    /**
     * @param powerStrip the powerStrip to set
     */
    public void setPowerStrip(String powerStrip) {
        this.powerStrip = powerStrip;
    }

    /**
     * @return the plasticBox
     */
    public String getPlasticBox() {
        return plasticBox;
    }

    /**
     * @param plasticBox the plasticBox to set
     */
    public void setPlasticBox(String plasticBox) {
        this.plasticBox = plasticBox;
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
        sb.append("ProjectionKit{code=").append(code);
        sb.append(", projectorCase=").append(projectorCase);
        sb.append(", electricityWire=").append(electricityWire);
        sb.append(", VGAConnector=").append(VGAConnector);
        sb.append(", HDMIConnector=").append(HDMIConnector);
        sb.append(", projectorControl=").append(projectorControl);
        sb.append(", batteries=").append(batteries);
        sb.append(", extension=").append(extension);
        sb.append(", powerStrip=").append(powerStrip);
        sb.append(", plasticBox=").append(plasticBox);
        sb.append(", state=").append(state);
        sb.append('}');
        return sb.toString();
    }

}
