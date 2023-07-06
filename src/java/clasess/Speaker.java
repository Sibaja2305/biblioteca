package clases;

/**
 * The `Speaker` class represents a speaker with its associated attributes.
 *
 * @author Diego Herrera López
 * @author Kevin Sibaja Granados
 * @author Yordany Navarro Hernandez
 * @author Jonathan Alfaro Herrera
 */
public class Speaker {

    // Class attributes
    private String code;
    private String speakerWire;
    private String electricalConnector;
    private String auxiliaryAudio;
    private String state;

    /**
     * Default constructor for the `Speaker` class. Initializes the attributes
     * with default values.
     */
    public Speaker() {
        this.code = "No";
        this.speakerWire = "";
        this.electricalConnector = "";
        this.auxiliaryAudio = "";
        this.state = "";

    }

    /**
     * Constructor for the `Speaker` class that accepts all parameters.
     *
     * @param code The code of the speaker.
     * @param speakerWire The speaker wire.
     * @param electricalConnector The electrical connector.
     * @param auxiliaryAudio The auxiliary audio.
     * @param state The state of the speaker.
     */
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

    /**
     * Returns a string representation of the `Speaker` instance.
     *
     * @return A string representing the `Speaker` instance.
     */
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
