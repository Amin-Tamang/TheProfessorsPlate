package com.theprofessorplate.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ValidationUtil {
    
    private static final String EMAIL_PATTERN = 
            "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
            + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
    
    private static final String PASSWORD_PATTERN = 
            "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}$";
    
    public static boolean isValidEmail(String email) {
        Pattern pattern = Pattern.compile(EMAIL_PATTERN);
        Matcher matcher = pattern.matcher(email);
        return matcher.matches();
    }
    
    public static boolean isValidPassword(String password) {
        // Basic validation - in a real app, you might want more complex validation
        return password != null && password.length() >= 6;
        
        // For stronger password validation, use:
        // Pattern pattern = Pattern.compile(PASSWORD_PATTERN);
        // Matcher matcher = pattern.matcher(password);
        // return matcher.matches();
    }
    
    public static boolean isNotEmpty(String... values) {
        for (String value : values) {
            if (value == null || value.trim().isEmpty()) {
                return false;
            }
        }
        return true;
    }
}