package utils;
import javax.persistence.*;
import java.util.Date;

/**
 * Created by parashan on 8/2/2017.
 */
@javax.persistence.Entity
@Table(name="soldvehiclemodels")
public class SoldVehicleModel  {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column
    int vehicleId;

    @Column(unique = true)
    int modelId;

    @Column
    String color;

    @Column
    Date soldOn;

    @Column
    String emailId;

    public SoldVehicleModel(int modelId, String color, Date soldOn, String emailId) {
        this.modelId = modelId;
        this.color = color;
        this.soldOn = soldOn;
        this.emailId = emailId;
    }
    public SoldVehicleModel() {

    }

    public int getVehicleId() {
        return vehicleId;
    }

    public void setVehicleId(int vehicleId) {
        this.vehicleId = vehicleId;
    }

    public int getModelId() {
        return modelId;
    }

    public void setModelId(int modelId) {
        this.modelId = modelId;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public Date getSoldOn() {
        return soldOn;
    }

    public void setSoldOn(Date soldOn) {
        this.soldOn = soldOn;
    }

    public String getEmailId() {
        return emailId;
    }

    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }
}
