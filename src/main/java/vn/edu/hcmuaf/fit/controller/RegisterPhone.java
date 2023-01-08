package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.dao.UserDAO;
import vn.edu.hcmuaf.fit.model.Database;
import vn.edu.hcmuaf.fit.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.*;
import java.util.regex.Pattern;

@WebServlet(urlPatterns = "/dang-ki-by-phone")
public class RegisterPhone extends HttpServlet {

    private HttpServletRequest req;
    private HttpServletResponse res;

    private boolean checkHasInput(String name) throws ServletException, IOException {
        if (isNull(valueOf(name))) {
            responeMessageNoDataInputFor(name);
            return false;
        } else return true;
    }

    private void responeMessageNoDataInputFor(String name) throws ServletException, IOException {
        System.out.println(req.getParameter(name));
        System.out.println("test1 " + name);
        req.setAttribute("css", "color: red; text-align: center;");
        req.setAttribute("meseageFromServlet", getMessageNoDataInputFor(name));
        req.getRequestDispatcher("/register").forward(req, res);
    }

    private void responeMessageRegisterSuccessFor(String name) throws ServletException, IOException, InterruptedException {
        System.out.println(req.getParameter(name));
        System.out.println("test1 " + name);
        req.setAttribute("css", "color: green; text-align: center;");
        req.setAttribute("meseageFromServlet", getMessageNoDataInputFor(name));
        req.getRequestDispatcher("/register").forward(req, res);
        Thread.sleep(3000);
        res.sendRedirect("/login");
    }

    private String getMessageNoDataInputFor(String name) {
        switch (name) {
            case "username":
                return "Thông tin Tên đăng nhập không được để trống!!!";
            case "phone":
                return "Thông tin Số điện thoại không được để trống!!!";
            case "pass":
                return "Thông tin Mật khẩu không được để trống!!!";
            case "confirmPass":
                return "Thông tin Xác nhận lại mật khẩu không được để trống!!!";
            case "passNotSameConfirmPass":
                return "Thông tin Mật khẩu và Xác nhận mật khẩu <br>không trùng khớp!!!";
            case "confirmTerms":
                return "Quý khách cần Đồng ý với chính sách bảo mật và<br> Điều khoản dịch vụ!!!";
            case "phoneIsNotValid":
                return "Số điện thoại của quý khách không đúng định dạng!!!";
            case "usernameOrPhoneHasExist":
                return "Tên đăng nhập hoặc số điện thoại đã tồn tại trong hệ thống!!!";
            case "registerSuccess":
                return "Chúc mừng bạn đã đăng kí thành công. <br>Đăng nhập ngay bạn nhé!!!";
        }
        return null;
    }

    private boolean checkIsValid(String name) {
        String value = valueOf(name);
        String reg = "^0[357894]{1}\\d{8}$";

        return Pattern.compile(reg).matcher(value).find();

    }
    private void startServlet() throws ServletException, IOException, SQLException, InterruptedException {
        System.out.println("Hello, you register by phone!!!");
//        Connection conn = Database.createConnectionToDatabase("laptrinhweb2022");
//        Statement s = conn.createStatement();
//        ResultSet rs = s.executeQuery("select * from account");
//
//        while (rs.next()) {
//            System.out.print(rs.getString("id") + "\t" + rs.getString("username") + "\t" +
//                    rs.getString("phone") + "\t" + rs.getString("pass") + "\t" +
//                    rs.getString("confirmPass") + "\n");
//        }
        // kiem tra o input k co data
        if (!checkHasInput("username")) return;
        if (!checkHasInput("phone")) return;
        if (!checkHasInput("pass")) return;
        if (!checkHasInput("confirmPass")) return;

        // kiem tra sdt dung cú pháp (hợp lệ) hay chua
        if (!checkIsValid("phone")) {
            System.out.println("ok ok ok");
            responeMessageNoDataInputFor("phoneIsNotValid");
            return;
        }

        // kiem tra xem pass va confirmpass giong nhau hay khong?
        String password = valueOf("pass");
        String confirmPass = valueOf("confirmPass");
        if (!password.equalsIgnoreCase(confirmPass)) {
            responeMessageNoDataInputFor("passNotSameConfirmPass");
            return;
        }

        //kiem tra xac nhan dieu khoan
        if (isNull(valueOf("confirmTerms"))) {
            System.out.println("ok");
            responeMessageNoDataInputFor("confirmTerms");
            return;
        }

        User user = new User();
        user.setUsername(valueOf("username"));
        user.setPhone(valueOf("phone"));
        user.setPass(valueOf("pass"));

        if (!UserDAO.checkUserRegister(user)) {
            responeMessageNoDataInputFor("usernameOrPhoneHasExist");
            return;
        }

        UserDAO.saveUserToDB(user);
        responeMessageRegisterSuccessFor("registerSuccess");
        System.out.println("");

        req.getRequestDispatcher("/register.jsp").forward(req, res);
    }

    private boolean isNull(String value) {
        return "".equals(value) || value == null;
    }

    private String valueOf(String nameAttribute) {
        System.out.println("aaa" + req.getParameter(nameAttribute));
        return req.getParameter(nameAttribute);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        req = request;
        res = response;
        try {
            startServlet();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }


}
