/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import util.DBConnection;
import java.sql.*;
import bean.RegisterBean;

public class RegisterDao {
    
    public boolean registerUser(RegisterBean registerBean) {
    String query = "INSERT INTO users (fullname, username, email, password) VALUES (?, ?, ?, ?)";
        
        try (Connection conn = DBConnection.createConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, registerBean.getFullname());
            stmt.setString(2, registerBean.getUsername());
            stmt.setString(3, registerBean.getEmail());
            stmt.setString(4, registerBean.getPassword());

            int rowsInserted = stmt.executeUpdate();
            return rowsInserted > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
