package service;

import db.DBConnectionProvider;
import model.UserRole;
import model.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class UserService {

    public List<User> findAll() {
        List<User> users = new ArrayList<>();

        try (Connection connection = DBConnectionProvider.getInstance().getConnection();
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery("SELECT * FROM users")) {

            while (resultSet.next()) {
                User user = new User();
                user.setId(resultSet.getInt("id"));
                user.setName(resultSet.getString("name"));
                user.setEmail(resultSet.getString("email"));
                user.setRole(UserRole.valueOf(resultSet.getString("role")));
                users.add(user);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return users;
    }

    public User login(String email, String password) {
        String sql = "SELECT * FROM users WHERE email=? AND password=?";

        try (Connection connection = DBConnectionProvider.getInstance().getConnection();
             PreparedStatement ps = connection.prepareStatement(sql)) {

            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setRole(UserRole.valueOf(rs.getString("role")));
                return user;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    public void addUser(User user) {
        String sql = "INSERT INTO users(name, email, password, role) VALUES (?,?,?,?)";

        try (Connection connection = DBConnectionProvider.getInstance().getConnection();
             PreparedStatement ps = connection.prepareStatement(sql)) {

            ps.setString(1, user.getName());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPassword());
            ps.setString(4, user.getRole().name());
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public User addUser(int userId) {
        return null;
    }

    public User getUserByEmailAndPassword(int userId) {
        return null;
    }

    public User getUserByEmailAndPassword(String email, String password) {
        return null;
    }

    public void register(User user) {
    }
}