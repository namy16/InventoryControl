package utils;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by parashan on 8/2/2017.
 */
@javax.persistence.Entity
@Table(name="sparepartrequests")
public class SparePartRequest {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column
    int requestId;

    @Column(unique = true)
    int sparePartId;

    @Column
    boolean isProcessed;

    @Column
    int units;

    @Column
    Date orderDate;

    public SparePartRequest(int sparePartId, boolean isProcessed, int units, Date orderDate) {
        this.sparePartId = sparePartId;
        this.isProcessed = isProcessed;
        this.units = units;
        this.orderDate = orderDate;
    }
    public SparePartRequest() {

    }

    public int getRequestId() {
        return requestId;
    }

    public void setRequestId(int requestId) {
        this.requestId = requestId;
    }

    public int getSparePartId() {
        return sparePartId;
    }

    public void setSparePartId(int sparePartId) {
        this.sparePartId = sparePartId;
    }

    public boolean isProcessed() {
        return isProcessed;
    }

    public void setProcessed(boolean processed) {
        isProcessed = processed;
    }

    public int getUnits() {
        return units;
    }

    public void setUnits(int units) {
        this.units = units;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    @Override
    public String toString() {
        return "SparePartRequest{" +
                "requestId=" + requestId +
                ", sparePartId=" + sparePartId +
                ", isProcessed=" + isProcessed +
                ", units=" + units +
                ", orderDate=" + orderDate +
                '}';
    }
}