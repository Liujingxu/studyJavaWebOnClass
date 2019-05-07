package com.nuc.studyJavaWeb.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    private Connection connection = null;

    private static final String DB_DRIVER = "com.mysql.cj.jdbc.Driver";

    private String db_url = null;

    private String db_user = null;

    private String db_pass = null;

    public DBConnection(String db_url, String db_user, String db_pass) {
        this.db_url = db_url;
        this.db_user = db_user;
        this.db_pass = db_pass;

        try {
            Class.forName(DB_DRIVER);
            connection = DriverManager.getConnection(db_url, db_user, db_pass);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Connection getConnection(){
        return connection;
    }

    public boolean close(){
        try {
            if (connection != null) {
                connection.close();
            }
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            return false;
        }
    }
}
