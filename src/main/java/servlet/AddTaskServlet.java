package servlet;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import service.TaskService;


import java.io.IOException;

@WebServlet("/addTask")
public class AddTaskServlet extends HttpServlet {

    private final TaskService taskService = new TaskService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {

        String name = req.getParameter("name");
        String description = req.getParameter("description");
        String deadline = req.getParameter("deadline");
        int userId = Integer.parseInt(req.getParameter("userId"));

        taskService.addTask(name, description, deadline, userId);

        resp.sendRedirect("managerHome");
    }
}