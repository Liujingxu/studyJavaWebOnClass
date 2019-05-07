package com.nuc.studyJavaWeb.dao;

import com.nuc.studyJavaWeb.entity.User;

import java.util.List;

public interface UserDao {

    public boolean addUser(User user);

    public User getUserById(Integer id);

    public List<User> getAll();

    public Integer getLastId();
}
