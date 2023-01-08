package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.dao.UserDAO;
import vn.edu.hcmuaf.fit.model.TestModel;
import vn.edu.hcmuaf.fit.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/dang-nhap", name="a")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String usernameEmail = request.getParameter("username");
        String pass = request.getParameter("pass");
        User user = new User();
        if (TestModel.isEmail(usernameEmail)) {
            System.out.println("email = " + usernameEmail + ", pass = " + pass);
            user.setEmail(usernameEmail);
        } else {
            System.out.println("username = " + usernameEmail + ", pass = " + pass);
            user.setUsername(usernameEmail);
        };
        user.setPass(pass);

        if (UserDAO.checkUserLogin(user)) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            response.sendRedirect("/register.jsp");
            System.out.println("Login thanh cong");
        } else {
            request.setAttribute("username", usernameEmail);
//            response.sendRedirect("/views/login.jsp");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
//            response.sendRedirect("/views/login.jsp");
            System.out.println("Login khong thanh cong");
        }
    }
}
