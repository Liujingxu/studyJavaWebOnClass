package com.nuc.studyJavaWeb.dao;

import javax.xml.parsers.DocumentBuilder;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Properties;

public class Factory {

    private static String DB_URL = "jdbc:mysql://localhost:3306/javaweb?serverTimezone=GMT%2B8";

    private static String DB_USER = "root";

    private static String DB_PASSWORD = "123456";



    public static UserProxy getUserProxyInstance(){
        return new UserProxy(DB_URL, DB_USER, DB_PASSWORD);
    }
}
