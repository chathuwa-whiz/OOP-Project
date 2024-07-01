package model;

public class Customer {

    // deploy attributes
    private int id;
    private String firstName;
    private String lastName;
    private String userName;
    private String phone;
    private String email;
    private String password;

    public Customer(){

    }

    // overloaded constructor
    public Customer(String firstName, String lastName, String userName, String phone, String email, String password) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.userName = userName;
        this.phone = phone;
        this.email = email;
        this.password = password;
    }

    // setters and getters
    public void setId(int id) {
        this.id = id;
    }
    public void setUserName(String userName) { this.userName = userName; }

    public int getId() {
        return id;
    }
    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getUserName() { return userName; }

    public String getPhone() {
        return phone;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }
}
