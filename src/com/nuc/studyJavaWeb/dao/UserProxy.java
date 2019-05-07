package com.nuc.studyJavaWeb.dao;

import com.nuc.studyJavaWeb.dao.impl.UserDaoImpl;
import com.nuc.studyJavaWeb.entity.User;

import java.util.List;

public class UserProxy implements UserDao {

    private UserDao userDao  = null;
    private DBConnection dbConnection = null;

    public UserProxy(String db_url, String db_user, String db_password) {
        dbConnection = new DBConnection(db_url, db_user, db_password);
        userDao = new UserDaoImpl(dbConnection.getConnection());
    }

    @Override
    public boolean addUser(User user) {
        boolean flag = userDao.addUser(user);
//        dbConnection.close();
        return flag;
    }

    @Override
    public User getUserById(Integer id) {
        User user = userDao.getUserById(id);
//        dbConnection.close();
        return user;
    }

    @Override
    public List<User> getAll() {
        List<User> users = userDao.getAll();
//        dbConnection.close();
        return users;
    }

    @Override
    public Integer getLastId() {
        return userDao.getLastId();
    }
}
