package utils;
import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by parashan on 8/2/2017.
 */
@javax.persistence.Entity
@Table(name="vehiclemodels")
 public class VehicleModel  {

    @Id
    @Column
    int modelId;

    @Column
    String modelName;

    @Column
    int price;

    @Column
    String transmission;

    @Column
    String color;

    @Column
    String image;

    @Column
    String bodyType;

    @Column
    int units;

    @Column
    String description;

    @Column
    Date releaseDate;

    public VehicleModel(int modelId, String modelName, int price,String transmission, String color, String image, String bodyType, int units, String description, Date releaseDate) {
        this.modelId = modelId;
        this.modelName = modelName;
        this.price=price;
        this.transmission = transmission;
        this.color = color;
        this.image = image;
        this.bodyType = bodyType;
        this.units = units;
        this.description = description;
        this.releaseDate = releaseDate;
    }

    public VehicleModel() {
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getModelId() {
        return modelId;
    }

    public void setModelId(int modelId) {
        this.modelId = modelId;
    }

    public String getModelName() {
        return modelName;
    }

    public void setModelName(String modelName) {
        this.modelName = modelName;
    }

    public String getTransmission() {
        return transmission;
    }

    public void setTransmission(String transmission) {
        this.transmission = transmission;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getBodyType() {
        return bodyType;
    }

    public void setBodyType(String bodyType) {
        this.bodyType = bodyType;
    }

    public int getUnits() {
        return units;
    }

    public void setUnits(int units) {
        this.units = units;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
    }

    @Override
    public String toString() {
        return "VehicleModel{" +
                "modelId=" + modelId +
                ", modelName='" + modelName + '\'' +
                ", price=" + price +
                ", transmission='" + transmission + '\'' +
                ", color='" + color + '\'' +
                ", image='" + image + '\'' +
                ", bodyType='" + bodyType + '\'' +
                ", units=" + units +
                ", description='" + description + '\'' +
                ", releaseDate=" + releaseDate +
                '}';
    }
}
