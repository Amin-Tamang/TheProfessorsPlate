package com.theprofessorplate.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.theprofessorplate.config.*;
import com.theprofessorplate.util.PasswordUtil;

public class UserDAO {
    
    public User authenticate(String email, String password) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        User user = null;
        
        try {
            conn = DbConfig.getConnection();
            String sql = "SELECT * FROM user WHERE user_email = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, email);
            
            rs = pstmt.executeQuery();
            
            if (rs.next()) {
            	String passwordHashed = rs.getString("user_password");
            	if (!PasswordUtil.decrypt(passwordHashed, email).equals(password)) {
            		return null;
            	}
                user = new User();
                user.setUserId(rs.getInt("user_id"));
                user.setFirstName(rs.getString("user_name").split(" ")[0]);
                user.setLastName(rs.getString("user_name").split(" ")[1]);
                user.setEmail(rs.getString("user_email"));
                user.setRole(rs.getString("user_role"));
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            // Close resources
            if (rs != null) {
                try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
            }
            if (pstmt != null) {
                try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
            }
            DbConfig.closeConnection(conn);
        }
        
        return user;
    }
    
    public boolean registerUser(User user) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        boolean success = false;
        
        try {
            conn = DbConfig.getConnection();
            String sql = "INSERT INTO user (user_name, user_password, user_role, user_email, phone_number) VALUES (?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, user.getFirstName() + " " + user.getLastName());
            pstmt.setString(2, PasswordUtil.encrypt(user.getEmail(), user.getPassword()));
            pstmt.setString(3, user.getRole());
            pstmt.setString(4, user.getEmail());
            pstmt.setString(5, user.getPhoneNumber());
            
            int rowsAffected = pstmt.executeUpdate();
            success = (rowsAffected > 0);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            // Close resources
            if (pstmt != null) {
                try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
            }
            DbConfig.closeConnection(conn);
        }
        
        return success;
    }
    
    public boolean isEmailExists(String email) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean exists = false;
        
        try {
            conn = DbConfig.getConnection();
            String sql = "SELECT email FROM user WHERE user_email = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, email);
            
            rs = pstmt.executeQuery();
            exists = rs.next();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            // Close resources
            if (rs != null) {
                try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
            }
            if (pstmt != null) {
                try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
            }
            DbConfig.closeConnection(conn);
        }
        
        return exists;
    }
}