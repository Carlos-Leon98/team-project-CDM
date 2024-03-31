package stateParks.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.*;
import org.hibernate.annotations.GenericGenerator;

import java.util.Objects;

/**
 * A Class that represents a State Park.
 * Watchmen Team Project
 * @author Darin Wellons
 * @version 1.0
 * @since 1.0
 */
@Entity
@Table(name = "StateParks") //TODO Update to match table name
public class StatePark {
    @Id // Need to do this for primary key
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
    private int id;
    @Column(name = "name")
    private String name;

    @Column(name = "county")
    private String county;

    @Column(name = "description")
    private String description;

    @Column(name = "GoogleMapsUrl")
    private String GoogleMapsUrl;

    @Column(name = "address")
    private String address;

    @Column(name = "HasCamping")
    private Boolean HasCamping;

    @Column(name = "HasFlushToilets")
    private Boolean HasFlushToilets;

    @Column(name = "HasPitToilets")
    private Boolean HasPitToilets;

    @Column(name = "HasHiking")
    private Boolean HasHiking;

    /**
     * Instantiates a new StatePark.
     * @param id
     * @param name
     * @param county
     * @param description
     * @param GoogleMapsUrl
     * @param address
     * @param HasCamping
     * @param HasFlushToilets
     * @param HasPitToilets
     * @param HasHiking
     */
    public StatePark(int id, String name, String county, String description, String GoogleMapsUrl, String address,
                     Boolean HasCamping, Boolean HasFlushToilets, Boolean HasPitToilets, Boolean HasHiking) {
        this.id = id;
        this.name = name;
        this.county = county;
        this.description = description;
        this.GoogleMapsUrl = GoogleMapsUrl;
        this.address = address;
        this.HasCamping = HasCamping;
        this.HasFlushToilets = HasFlushToilets;
        this.HasPitToilets = HasPitToilets;
        this.HasHiking = HasHiking;
    }

    // Empty Constructor.
    public StatePark() {
    }

    // Getters and Setters
    /**
     * Gets the id.
     * @return id
     */
    public int getId() {
        return id;
    }

    /**
     * Sets the id.
     * @param id
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * Gets the park name.
     * @return name
     */
    public String getName() {
        return name;
    }

    /**
     * Sets the park name
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * Gets the county the park is in
     * @return county
     */
    public String getCounty() {
        return county;
    }

    /**
     * Sets the county
     * @param county
     */
    public void setCounty(String county) {
        this.county = county;
    }

    /**
     * Gets the park description.
     * @return description
     */
    public String getDescription() {
        return description;
    }

    /**
     * Sets the description
     * @param description
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * Gets the Google Maps URL
     * @return GoogleMapsUrl
     */
    public String getGoogleMapsUrl() {
        return GoogleMapsUrl;
    }

    /**
     * Sets GoogleMapsUrl
     * @param googleMapsUrl
     */
    public void setGoogleMapsUrl(String googleMapsUrl) {
        this.GoogleMapsUrl = googleMapsUrl;
    }

    /**
     * Gets the parks address
     * @return address
     */
    public String getAddress() {
        return address;
    }

    /**
     * Sets the park address
     * @param address
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * If the park has camping
     * @return HasCamping
     */
    public Boolean getHasCamping() {
        return HasCamping;
    }

    /**
     * Sets HasCamping
     * @param HasCamping
     */
    public void setHasCamping(Boolean HasCamping) {
        this.HasCamping = HasCamping;
    }

    /**
     * Gets if the park has flush toilets
     * @return HasFlushToilets
     */
    public Boolean getHasFlushToilets() {
        return HasFlushToilets;
    }

    /**
     * Sets HasFlushToilets
     * @param HasFlushToilets
     */
    public void setHasFlushToilets(Boolean HasFlushToilets) {
        this.HasFlushToilets = HasFlushToilets;
    }

    /**
     * Gets if the park has pit toilets
     * @return HasPitToilets
     */
    public Boolean getHasPitToilets() {
        return HasPitToilets;
    }

    /**
     * Sets HasPitToilets
     * @param HasPitToilets
     */
    public void setHasPitToilets(Boolean HasPitToilets) {
        this.HasPitToilets = HasPitToilets;
    }

    /**
     * Gets if the park has hiking
     * @return HasHiking
     */
    public Boolean getHasHiking() {
        return HasHiking;
    }

    /**
     * Sets HasHiking
     * @param HasHiking
     */
    public void setHasHiking(Boolean HasHiking) {
        this.HasHiking = HasHiking;
    }

    /**
     * Generates a String with park information.
     * @return The StatePark Information
     */
    @Override
    public String toString() {
        return "StatePark{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", county='" + county + '\'' +
                ", description='" + description + '\'' +
                ", GoogleMapsUrl='" + GoogleMapsUrl + '\'' +
                ", address='" + address + '\'' +
                ", HasCamping=" + HasCamping +
                ", HasFlushToilets=" + HasFlushToilets +
                ", HasPitToilets=" + HasPitToilets +
                ", HasHiking=" + HasHiking +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        StatePark statePark = (StatePark) o;
        return id == statePark.id && Objects.equals(name, statePark.name) && Objects.equals(county, statePark.county) && Objects.equals(description, statePark.description) && Objects.equals(GoogleMapsUrl, statePark.GoogleMapsUrl) && Objects.equals(address, statePark.address) && Objects.equals(HasCamping, statePark.HasCamping) && Objects.equals(HasFlushToilets, statePark.HasFlushToilets) && Objects.equals(HasPitToilets, statePark.HasPitToilets) && Objects.equals(HasHiking, statePark.HasHiking);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, county, description, GoogleMapsUrl, address, HasCamping, HasFlushToilets, HasPitToilets, HasHiking);
    }
}