package servlet;

import model.User;
import service.UserService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    private final UserService userService = new UserService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        User user = userService.login(email, password);

        if (user == null) {
            resp.sendRedirect("login.jsp");
            return;
        }

        HttpSession session = req.getSession();
        session.setAttribute("user", user);

        if (user.getRole().name().equals("MANAGER")) {
            resp.sendRedirect("managerHome");
        } else {
            resp.sendRedirect("userHome");
        }
    }
}