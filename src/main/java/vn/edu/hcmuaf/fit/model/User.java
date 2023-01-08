package vn.edu.hcmuaf.fit.model;

public class User {

    private String username;

    private String fullName;
    private String email;
    private String pass;

//    private String confirmPass;

    private String phone;

    public User() {
        username = null;
        phone = null;
        pass = null;
//        confirmPass = null;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getEmail() {
        return email;
    }

    public String getPass() {
        return pass;
    }

    public String getUsername() {
        return username;
    }


    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }


    public String getFullName() {
        return fullName;
    }

    public String getPhone() {
        return phone;
    }
}
