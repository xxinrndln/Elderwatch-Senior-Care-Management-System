/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;
import java.sql.*;

public class DBConnection {
    
    public static Connection createConnection(){
        
        Connection conn = null;
        try {
                conn = DriverManager.getConnection("jdbc:derby://localhost:1527/ElderwatchDB", "app", "app");
                System.out.println("Connection to the database established successfully.");
                } catch (SQLException e) {
                System.err.println("Error connecting to the database: " + e.getMessage());
                }
        return conn;
        
    }
    
}
    
        
    

