package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;
import service.TaskService;

import java.io.IOException;

@WebServlet("/userHome")
public class UserHomeServlet extends HttpServlet {

    private final TaskService taskService = new TaskService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("user");

        if (user == null) {
            resp.sendRedirect("login.jsp");
            return;
        }

        req.setAttribute("tasks",
                taskService.findByUser(user.getId()));

        req.getRequestDispatcher("/WEB-INF/userHome.jsp")
                .forward(req, resp);
    }
}