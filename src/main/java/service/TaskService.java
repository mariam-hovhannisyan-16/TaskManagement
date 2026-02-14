package service;

import model.Task;
import model.TaskStatus;
import model.User;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class TaskService {

    private static final List<Task> tasks = new ArrayList<>();
    private static int idGenerator = 1;

    public void addTask(String name,
                        String description,
                        String deadline,
                        int userId) {

        Task task = new Task();

        task.setId(idGenerator++);
        task.setName(name);
        task.setDescription(description);
        task.setDeadline(String.valueOf(LocalDate.parse(deadline)));
        task.setStatus(TaskStatus.EnumDesc);

        User user = new User();
        user.setId(userId);
        task.setUser(user);

        tasks.add(task);
    }

    public List<Task> getAll() {
        return tasks;
    }

    public List<Task> getTasksByUser(int userId) {

        List<Task> result = new ArrayList<>();

        for (Task task : tasks) {
            if (task.getUser().getId() == userId) {
                result.add(task);
            }
        }

        return result;
    }

    public Object findByUser(int id) {
        return null;
    }
}