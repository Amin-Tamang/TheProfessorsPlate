package com.islington.util;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class ValidationUtil
 */
@WebServlet("/validation")
public class ValidationUtil extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	@WebServlet(asyncSupported = true, urlPatterns = { "/RegisterServlet" })
	public class RegisterServlet extends HttpServlet {

	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	        // 1. Name Format Validation
	        if (!isValidName(firstName) || !isValidName(lastName)) {
	            // Redirect to the registration page with an error message
	            response.sendRedirect(request.getContextPath() + "/register.html?error=name");
	            return;
	        }

	        // 2. Minimum Username Length Requirement and Special Character Validation
	        if (!isValidUsername(userName)) {
	            // Redirect to the registration page with an error message
	            response.sendRedirect(url +”?error=username”);
	            return;
	        }

	        // 3. Birthday Date Restriction
	        if (dob.isAfter(LocalDate.now())) {
	            // Redirect to the registration page with an error message
	            response.sendRedirect(url +”?error=birthday”);
	            return;
	        }

	        // 4. Phone Number Format Requirement
	        if (!isValidPhoneNumber(phoneNumber)) {
	            // Redirect to the registration page with an error message
	            response.sendRedirect(url +”?error=phone”);
	            return;
	        }

	        // 5. Password Complexity Requirement and Matching Passwords
	        if (!isValidPassword(password, retypePassword)) {
	            // Redirect to the registration page with an error message
	            response.sendRedirect(url +”?error=password”);
	            return;
	        }

	        // 6. Data Duplication Identification Requirement
	        if (dbController.isUsernameExists(userName) || dbController.isEmailExists(email)
	                || dbController.isPhoneNumberExists(phoneNumber)) {
	            // Redirect to the registration page with an error message
	            response.sendRedirect(url +”?error=duplicate”);
	            return;
	        }

	        // If all validations are met, proceed to add data to the table
	        int result = dbController.addStudent(studentModel);

	        if (result == 1) {
	            // Successful registration, redirect to login page
	            response.sendRedirect(request.getContextPath() + "/pages/login.html");
	        } else {
	            // Redirect to the registration page with a general error message
	            response.sendRedirect(url +”?error=general”);
	        }
	    }

	    // Helper methods for validations
	    private boolean isValidName(String name) {
	        // Implement name validation logic
	        return !name.matches(".*\\d.*") && !name.matches(".*[!@#$%^&*()_+\\-=\\[\\]{};':\"\\\\|,.<>\\/?].*");
	    }

	    private boolean isValidUsername(String username) {
	        // Implement username validation logic
	        return username.length() > 6 && !username.matches(".*[!@#$%^&*()_+\\-=\\[\\]{};':\"\\\\|,.<>\\/?].*");
	    }

	    private boolean isValidPhoneNumber(String phoneNumber) {
	        // Implement phone number validation logic
	        return phoneNumber.startsWith("+") && phoneNumber.length() == 14;
	    }

	    private boolean isValidPassword(String password, String retypePassword) {
	        // Implement password validation logic
	        return password.length() > 6 && password.matches(".*\\d.*") && password.matches(".*[!@#$%^&*()_+\\-=\\[\\]{};':\"\\\\|,.<>\\/?].*")
	                && password.matches(".*[A-Z].*") && password.equals(retypePassword);
	    }
