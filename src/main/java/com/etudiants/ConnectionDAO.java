package com.etudiants;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDAO {

    private static final String jdbcURL = "jdbc:mysql://localhost:3306/gestion_etudiants";
    private static final String jdbcUserName = "root";
    private static final String jdbcPassword = "";
    private static final String jdbcDriver = "com.mysql.cj.jdbc.Driver";

    public static Connection getConnection() throws SQLException, ClassNotFoundException {
        Class.forName(jdbcDriver);
        return DriverManager.getConnection(jdbcURL, jdbcUserName, jdbcPassword);
    }
}
