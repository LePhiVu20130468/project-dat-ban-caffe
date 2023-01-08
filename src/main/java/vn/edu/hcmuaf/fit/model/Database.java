package vn.edu.hcmuaf.fit.model;

import com.mysql.cj.jdbc.CallableStatementWrapper;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class Database {

    static final String DATABASE_NAME = "laptrinhweb2022";
    public static Connection createConnectionToDatabase(String databaseName) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/" + databaseName, "root", "");
            return conn;
        } catch (ClassNotFoundException e) {
            System.out.println("Error 1");
        } catch (SQLException e) {
            System.out.println("Error 2");
        }

        return null;
    }

    public static List<User> getListUser() {
        List<User> listUser = new ArrayList<>();

        Connection connection = createConnectionToDatabase(DATABASE_NAME);
        try {
            Statement pre = connection.createStatement();
            ResultSet rs = pre.executeQuery("select * from account;");
            while (rs.next()) {
                String username = rs.getString("username");
                String phone = rs.getString("phone");
                String pass = rs.getString("pass");
                User user = new User();
                user.setUsername(username);
                user.setPhone(phone);
                user.setPass(pass);
                listUser.add(user);
//                System.out.print("username = " + rs.getString("username") +
//                        "\n" + rs.getString("phone") +
//                        "\n" + rs.getString("pass") +
//                        "\n" + rs.getString("confirmPass") + "\n");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return listUser;
    }

    public static void saveUser(User userSaved) {
        Connection connection = createConnectionToDatabase(DATABASE_NAME);
        UUID uuid = UUID.randomUUID();
        try {
            PreparedStatement pre = connection.prepareStatement("insert into account VALUES(?, ?, ?, ?);");
            pre.setString(1, uuid.toString());
            pre.setString(2, userSaved.getUsername());
            pre.setString(3, userSaved.getPhone());
            pre.setString(4, userSaved.getPass());
            pre.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
