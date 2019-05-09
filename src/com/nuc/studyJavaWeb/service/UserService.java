package com.nuc.studyJavaWeb.service;

import com.nuc.studyJavaWeb.entity.User;

import java.util.List;

public interface UserService {

    public boolean login(Integer id, String password);

    public List<User> list();

    public boolean addUser(User user);

    public Integer getId();

    public void close();
}
