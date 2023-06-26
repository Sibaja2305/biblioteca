package clases;

/**
 *
 * @author yorda
 */
public class Speaker {

    private String code;
    private String speakerWire;
    private String electricalConnector;
    private String auxiliaryAudio;
    private String state;

    public Speaker() {
        this.code = "No";
        this.speakerWire = "";
        this.electricalConnector="";
        this.auxiliaryAudio = "";
        this.state = "";

    }

    public Speaker(String code, String speakerWire, String electricalConnector, String auxiliaryAudio, String state) {
        this.code = code;
        this.speakerWire = speakerWire;
        this.electricalConnector = electricalConnector;
        this.auxiliaryAudio = auxiliaryAudio;
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
     * @return the speakerWire
     */
    public String getSpeakerWire() {
        return speakerWire;
    }

    /**
     * @param speakerWire the speakerWire to set
     */
    public void setSpeakerWire(String speakerWire) {
        this.speakerWire = speakerWire;
    }

    /**
     * @return the electricalConnector
     */
    public String getElectricalConnector() {
        return electricalConnector;
    }

    /**
     * @param electricalConnector the electricalConnector to set
     */
    public void setElectricalConnector(String electricalConnector) {
        this.electricalConnector = electricalConnector;
    }

    /**
     * @return the auxiliaryAudio
     */
    public String getAuxiliaryAudio() {
        return auxiliaryAudio;
    }

    /**
     * @param auxiliaryAudio the auxiliaryAudio to set
     */
    public void setAuxiliaryAudio(String auxiliaryAudio) {
        this.auxiliaryAudio = auxiliaryAudio;
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
        sb.append("Speaker{code=").append(code);
        sb.append(", speakerWire=").append(speakerWire);
        sb.append(", electricalConnector=").append(electricalConnector);
        sb.append(", auxiliaryAudio=").append(auxiliaryAudio);
        sb.append(", state=").append(state);
        sb.append('}');
        return sb.toString();
    }

    

   

    

}
