package utils;
import javax.persistence.*;
/**
 * Created by parashan on 8/2/2017.
 */
@javax.persistence.Entity
@Table(name="users")
public class User {

    @Column
    String name;

    @Id
    @Column
    String emailId;

    @Column
    String password;


    @Column
    long phone;

    @Column
    long aadhar;

    @Column
    String address;

    public User(String name, String emailId, String password, long phone, long aadhar, String address) {
        this.name = name;
        this.emailId = emailId;
        this.password = password;
        this.phone = phone;
        this.aadhar = aadhar;
        this.address = address;
    }
    public User() {

    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmailId() {
        return emailId;
    }

    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public long getPhone() {
        return phone;
    }

    public void setPhone(long phone) {
        this.phone = phone;
    }

    public long getAadhar() {
        return aadhar;
    }

    public void setAadhar(long aadhar) {
        this.aadhar = aadhar;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
