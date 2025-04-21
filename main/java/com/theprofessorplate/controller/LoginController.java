package com.theprofessorplate.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;


import com.theprofessorplate.model.User;
import com.theprofessorplate.model.UserDAO;
import com.theprofessorplate.util.RedirectionUtil;
import com.theprofessorplate.util.ValidationUtil;


/**
 * @author Ryan Khan
 */
//@WebServlet(asyncSupported = true, urlPatterns = {"/login"})
//public class LoginController extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//   
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
//			throws ServletException, IOException {
//		request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
//	}
//}

@WebServlet(asyncSupported = true, urlPatterns = {"/login"})
public class LoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private UserDAO userDAO;
    
    public LoginController() {
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
        
        // Forward to login page
        request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        // Validate inputs
        if (!ValidationUtil.isNotEmpty(email, password)) {
            RedirectionUtil.redirectWithError(request, response, "login", "error", "All fields are required");
            return;
        }
        
        if (!ValidationUtil.isValidEmail(email)) {
            RedirectionUtil.redirectWithError(request, response, "login", "error", "Invalid email format");
            return;
        }
        
        // Authenticate user
        User user = userDAO.authenticate(email, password);
        
        if (user != null) {
            // Create session and store user info
            HttpSession session = request.getSession();
            session.setAttribute("email", email);
            
            // Redirect to home page
            RedirectionUtil.redirectToHome(request, response);
        } else {
            // Authentication failed
            RedirectionUtil.redirectWithError(request, response, "login", "error", "Invalid email or password");
        }
    }
}