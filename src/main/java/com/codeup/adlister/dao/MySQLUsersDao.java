package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

import java.sql.*;

public class MySQLUsersDao implements Users {
    private Connection connection = null;

    public MySQLUsersDao(Config config) {
        try {
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public User findByUsername(String username) {
        String query = "SELECT * FROM users WHERE username = ? limit 1";

        try {
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();

            rs.next();
            return new User(
                    rs.getString("username"),
                    rs.getString("email"),
                    rs.getString("password")

            );
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving the user by username", e);
        }
    }

    @Override
    public Long insert(User user) {
        long newId = 0;

        try {
            PreparedStatement stmt = connection.prepareStatement("INSERT INTO users (username, email, password) VALUES (?,?,?)", Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());

            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();

            rs.next();
            newId = rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error inserting new user", e);
        }

        return newId;
    }

}