package utils;
import javax.persistence.*;
import java.util.Date;

/**
 * Created by parashan on 8/2/2017.
 */
@javax.persistence.Entity
@Table(name="soldspareparts")
public class SoldSparePart  {
    @Id@GeneratedValue
    @Column
    int id;

    @Column
    int sparePartId;

    @Column
    Date soldOn;

    @Column
    String emailId;

    public SoldSparePart(int sparePartId, Date soldOn, String emailId) {
        this.sparePartId = sparePartId;
        this.soldOn = soldOn;
        this.emailId = emailId;
    }
    public SoldSparePart(){

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getSparePartId() {
        return sparePartId;
    }

    public void setSparePartId(int sparePartId) {
        this.sparePartId = sparePartId;
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
