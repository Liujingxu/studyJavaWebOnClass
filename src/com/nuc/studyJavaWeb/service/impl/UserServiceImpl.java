package com.nuc.studyJavaWeb.service.impl;

import com.nuc.studyJavaWeb.dao.Factory;
import com.nuc.studyJavaWeb.dao.UserProxy;
import com.nuc.studyJavaWeb.entity.User;
import com.nuc.studyJavaWeb.service.UserService;

import java.util.List;

public class UserServiceImpl implements UserService {

    private UserProxy userProxy = null;

    public UserServiceImpl() {
        userProxy = Factory.getUserProxyInstance();
    }

    @Override
    public boolean login(Integer id, String password) {
        User user = userProxy.getUserById(id);
        if (password.equals(user.getPassword())){
            return true;
        }
        return false;
    }

    @Override
    public List<User> list()
    {
        return userProxy.getAll();
    }

    @Override
    public boolean addUser(User user)
    {
        return userProxy.addUser(user);
    }

    @Override
    public Integer getId() {
        return userProxy.getLastId();
    }

    @Override
    public void close() {
        userProxy.close();
    }
}
