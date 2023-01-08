package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.model.Database;
import vn.edu.hcmuaf.fit.model.User;

import java.sql.Connection;
import java.util.List;

public class UserDAO {

    static final String USERNAME = "Le Phi Vu";
    static final String EMAIL = "lephivu@demo.com";
    static final String PASS = "lephivu";


    public static boolean checkUserLogin(User user) {
        String username = user.getUsername();
        String pass = user.getPass();
        String email = user.getEmail();
        if (username != null && username.equals(USERNAME) && pass.equals(PASS)) {
            user.setUsername("Le Phi Vu Username");
            return true;
        }
        if (email != null && email.equals(EMAIL) && pass.equals(PASS)) {
            user.setUsername("Le Phi Vu Email");
            return true;
        }
        return false;
    }

    public static boolean checkUserRegister(User userThat) {
        List<User> listUser = Database.getListUser();
        for (User aUserInDB : listUser) {
            if (userThat.getUsername().equalsIgnoreCase(aUserInDB.getUsername()) || (userThat.getPhone().equalsIgnoreCase(aUserInDB.getPhone()))) return false;
        }
        return true;
    }

    public static void saveUserToDB(User userSaved) {
        Database.saveUser(userSaved);
    }
}
