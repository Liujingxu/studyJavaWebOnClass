package com.nuc.studyJavaWeb.dao;

import com.nuc.studyJavaWeb.entity.User;
import org.junit.Test;

import java.util.Iterator;
import java.util.List;

import static org.junit.Assert.*;

public class FactoryTest {

    @Test
    public void test1(){
        UserProxy proxy = Factory.getUserProxyInstance();
        List<User> all = proxy.getAll();
        Iterator<User> iterator = all.iterator();
        while(iterator.hasNext()){
            User next = iterator.next();
            System.out.println(next);
        }
//    User user = proxy.getUserById(101);
//        System.out.println(user);
    }

    @Test
    public void test2(){
        UserProxy proxy = Factory.getUserProxyInstance();
        User user = new User();
        user.setUsername("赵宸");
        user.setPassword("222222");
        user.setEmail("zc@qq.com");
        user.setAge(19);
        user.setAddress(1001);
        System.out.println(user);
        proxy.addUser(user);
    }

}