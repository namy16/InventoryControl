package utils;
import javax.persistence.*;
import java.util.Date;

/**
 * Created by parashan on 8/2/2017.
 */
@javax.persistence.Entity
@Table(name="spareparts")
public class SparePart {
    @Id
    @Column
    int sparePartId;

    @Column
    int vehicleModelId;


    @Column
    String sparePartName;

    @Column
    String image;


    @Column
    int units;

    @Column
    Date orderedOn;

    public SparePart(int sparePartId, int vehicleModelId, String sparePartName, String image, int units, Date orderedOn) {
        this.sparePartId = sparePartId;
        this.vehicleModelId = vehicleModelId;
        this.sparePartName = sparePartName;
        this.image = image;
        this.units = units;
        this.orderedOn = orderedOn;
    }
    public SparePart() {

    }

    public int getSparePartId() {
        return sparePartId;
    }

    public void setSparePartId(int sparepartId) {
        this.sparePartId = sparepartId;
    }

    public int getVehicleModelId() {
        return vehicleModelId;
    }

    public void setVehicleModelId(int vehicleModelId) {
        this.vehicleModelId = vehicleModelId;
    }

    public String getSparePartName() {
        return sparePartName;
    }

    public void setSparePartName(String sparePartName) {
        this.sparePartName = sparePartName;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getUnits() {
        return units;
    }

    public void setUnits(int units) {
        this.units = units;
    }

    public Date getOrderedOn() {
        return orderedOn;
    }

    public void setOrderedOn(Date orderedOn) {
        this.orderedOn = orderedOn;
    }

    @Override
    public String toString() {
        return "SparePart{" +
                "sparePartId=" + sparePartId +
                ", vehicleModelId=" + vehicleModelId +
                ", sparePartName='" + sparePartName + '\'' +
                ", image='" + image + '\'' +
                ", units=" + units +
                ", orderedOn=" + orderedOn +
                '}';
    }
}
