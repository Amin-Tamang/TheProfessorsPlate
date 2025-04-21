package com.theprofessorplate.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import com.theprofessorplate.model.User;
import com.theprofessorplate.model.UserDAO;
import com.theprofessorplate.util.RedirectionUtil;
import com.theprofessorplate.util.ValidationUtil;
/**
 * @author Ryan
 */
//@WebServlet(asyncSupported = true, urlPatterns = { "/register" })
//public class RegisterController extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//
//	@Override
//	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		req.getRequestDispatcher("WEB-INF/pages/register.jsp").forward(req, resp);
//	}
//
//}



@WebServlet(asyncSupported = true, urlPatterns = { "/register" })
public class RegisterController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private UserDAO userDAO;
    
    public RegisterController() {
        super();
        userDAO = new UserDAO();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Check if user is already logged in
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("user") != null) {
            RedirectionUtil.redirectToHome(request, response);
            return;
        }
        
        // Forward to register page
        request.getRequestDispatcher("/WEB-INF/pages/register.jsp").forward(request, response);
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("fullname").split(" ")[0];
        String lastName = request.getParameter("fullname").split(" ")[1];
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirm-password");
        
        // Validate inputs
        if (!ValidationUtil.isNotEmpty(firstName, lastName, email, password, confirmPassword)) {
            RedirectionUtil.redirectWithError(request, response, "register", "error", "All fields are required");
            return;
        }
        
        if (!ValidationUtil.isValidEmail(email)) {
            RedirectionUtil.redirectWithError(request, response, "register", "error", "Invalid email format");
            return;
        }
        
        if (!ValidationUtil.isValidPassword(password)) {
            RedirectionUtil.redirectWithError(request, response, "register", "error", "Password must be at least 6 characters");
            return;
        }
        
        if (!password.equals(confirmPassword)) {
            RedirectionUtil.redirectWithError(request, response, "register", "error", "Passwords do not match");
            return;
        }
        
        // Check if email already exists
        if (userDAO.isEmailExists(email)) {
            RedirectionUtil.redirectWithError(request, response, "register", "error", "Email already registered");
            return;
        }
        
        // Create new user
        User user = new User(firstName, lastName, email, password, "");
        
        // Register user
        boolean isRegistered = userDAO.registerUser(user);
        
        if (isRegistered) {
            // Redirect to login page with success message
            response.sendRedirect(request.getContextPath() + "/login?success=Registration successful! Please login.");
        } else {
            // Registration failed
            RedirectionUtil.redirectWithError(request, response, "register", "error", "Registration failed. Please try again.");
        }
    }
}