/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.DbConnection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author Owner
 */
public class DbConnection {
    public static Connection getConnection() throws SQLException{
            String url = "jdbc:mysql://localhost:3306/infodeck";
            String username = "root";
                String password = "itsdyash";
            
            return DriverManager.getConnection(url,username,password);
    }
    
}