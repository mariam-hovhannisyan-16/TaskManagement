package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import model.User;
import service.TaskService;
import service.UserService;

import java.io.IOException;

@WebServlet("/managerHome")
public class ManagerHomeServlet extends HttpServlet {

    private final TaskService taskService = new TaskService();
    private final UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("user");

        if (user == null) {
            resp.sendRedirect("login.jsp");
            return;
        }

        req.setAttribute("users", userService.getClass());
        req.setAttribute("tasks", taskService.getClass());

        req.getRequestDispatcher("/WEB-INF/managerHome.jsp")
                .forward(req, resp);
    }
}