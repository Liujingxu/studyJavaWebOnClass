package com.nuc.studyJavaWeb.entity;

import java.util.HashMap;
import java.util.Map;

public class Register {
    private String name;
    private String age;
    private String email;
    private Map<String, String> errors = null;
    private static final String WRONG_NAME = "用户名必须是6-15位";
    private static final String WRONG_AGE = "年龄必须为数字";
    private static final String WRONG_EMAIL = "邮箱格式不正确";
    private static final String NULL_NAME = "用户名不能为空";
    private static final String NULL_AGE = "年龄不能为空";
    private static final String NULL_EMAIL = "邮箱不能为空";

    public Register() {
        errors = new HashMap<>();
    }

    public String getName() {
        if (name == null){
            return "";
        }else {
            return name;
        }
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAge() {
        if (age == null){
            return "";
        }else{
            return age;
        }
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getEmail() {
        if (email == null){
            return "";
        }else {
            return email;
        }
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean check() {
        boolean isCurrect = true;

        if (name == null){
            isCurrect = false;
            errors.put("nullName", NULL_NAME);
        }else if (!name.matches("\\w{6,15}")){
            isCurrect = false;
            name = "";
            errors.put("name", WRONG_NAME);
        }

        if (age == null){
            isCurrect = false;
            errors.put("nullAge", NULL_AGE);
        }else if (!age.matches("\\d+")){
            isCurrect = false;
            age = "";
            errors.put("age", WRONG_AGE);
        }

        if (email == null){
            isCurrect = false;
            errors.put("nullEmail", NULL_EMAIL);
        }else if (!email.matches("\\w+@\\w+\\.\\w+(\\.\\w+)?")){
            isCurrect = false;
            email = "";
            errors.put("email", WRONG_EMAIL);
        }

        return isCurrect;
    }

    public String showErrorMessage(String key){
        String result = errors.get(key);
        if (result == null){
            return "";
        }else {
            return result;
        }
    }

}
