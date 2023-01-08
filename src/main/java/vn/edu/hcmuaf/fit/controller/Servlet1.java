package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.Data;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "/servlet", value = "/servlet")
public class Servlet1 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        if (Data.check(name)) {
            String style_hide = ".form {display: none;}" +
                    "#text {color: red;}";
            String returnValue = "<h1 id=\"text\">Hello " + name + "</h1>";
            request.setAttribute("style_hide", style_hide);
//            request.setAttribute("returnName", "Hello " + name);
            request.setAttribute("demo", returnValue);
            request.getRequestDispatcher("/views/demo1.jsp").forward(request, response);
        } else {
            request.setAttribute("returnName", "Name not found");
            request.getRequestDispatcher("/views/demo1.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
