/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import util.DBConnection;
import java.sql.*;
import bean.LoginBean;

public class Logindao {
    public String authenticateUser(LoginBean loginbean){
        String username =loginbean.getUsername();
        String password = loginbean.getPassword();
        
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        
        try {
            conn = DBConnection.createConnection();
            String query = "SELECT username, password FROM users WHERE username = ?";
            pstmt = conn.prepareStatement(query);
            pstmt.setString(1, username);
            rs = pstmt.executeQuery();
            
            while (rs.next())
            {
                String usernameDB = rs.getString("username");
                String passwordDB = rs.getString("password");
                
                if (username.equals(usernameDB) && password.equals(passwordDB)){
                    return "SUCCESS";
                }
            } 
            

        }catch (SQLException e){
            e.printStackTrace();
        }finally {
                try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } 
            return "Invalid user credentials";
        
            
    }
}
