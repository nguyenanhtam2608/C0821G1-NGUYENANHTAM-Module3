package model;

public class Customer {
    String name ;
    String dayOfBirth;
    String address;
    String inmage;

    public Customer(String name, String dayOfBirth, String address, String inmage) {
        this.name = name;
        this.dayOfBirth = dayOfBirth;
        this.address = address;
        this.inmage = inmage;
    }

    public Customer() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDayOfBirth() {
        return dayOfBirth;
    }

    public void setDayOfBirth(String dayOfBirth) {
        this.dayOfBirth = dayOfBirth;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getInmage() {
        return inmage;
    }

    public void setInmage(String inmage) {
        this.inmage = inmage;
    }
}
