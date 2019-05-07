package com.nuc.studyJavaWeb.dao.impl;

import com.nuc.studyJavaWeb.dao.DBConnection;
import com.nuc.studyJavaWeb.dao.UserDao;
import com.nuc.studyJavaWeb.entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImpl implements UserDao {

    private Connection connection = null;
    private PreparedStatement preparedStatement = null;
    private ResultSet resultSet = null;

    public UserDaoImpl(Connection connection) {
        this.connection = connection;
    }

    @Override
    public boolean addUser(User user) {

        int row = 0;
        Integer id = getLastId();
//        Integer id = new Integer(0);
//        String sql1 = "select id from users order by id desc limit 1;";
        try {
//            preparedStatement = connection.prepareStatement(sql1);
//            resultSet = preparedStatement.executeQuery();
//            if (resultSet.next()){
//                id = resultSet.getInt(1);
//            }
            id++;
            user.setId(id);
            String sql = "insert into users values(?, ?, ?, ?, ?, ?)";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, user.getId());
            preparedStatement.setString(2, user.getUsername());
            preparedStatement.setString(3, user.getPassword());
            preparedStatement.setString(4, user.getEmail());
            preparedStatement.setInt(5, user.getAge());
            preparedStatement.setInt(6, user.getAddress());
            row = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                preparedStatement.close();
//                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                if (row > 0){
                    return true;
                }else {
                    return false;
                }
            }
        }
    }

    @Override
    public User getUserById(Integer id) {
        User user = new User();
        try {
            String sql = "select * from users where id = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                user.setId(resultSet.getInt("id"));
                user.setUsername(resultSet.getString("username"));
                user.setPassword(resultSet.getString("password"));
                user.setAge(resultSet.getInt("age"));
                user.setEmail(resultSet.getString("email"));
                user.setAddress(resultSet.getInt("address_id"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                preparedStatement.close();
//                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                return user;
            }
        }

    }

    @Override
    public List<User> getAll() {
            String sql = "select * from users";
            List<User> users = new ArrayList<>();
        try {
            preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();

            while(resultSet.next()){
                User user = new User();
                user.setId(resultSet.getInt("id"));
                user.setUsername(resultSet.getString("username"));
                user.setPassword(resultSet.getString("email"));
                user.setAge(resultSet.getInt("age"));
                user.setEmail(resultSet.getString("email"));
                user.setAddress(resultSet.getInt("address_id"));
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                preparedStatement.close();
//                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                return users;
            }
        }

    }

    @Override
    public Integer getLastId() {
        Integer id = new Integer(0);
        String sql = "select id from users order by id desc limit 1;";
        try {
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                id = resultSet.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            return id;
        }
    }
}
