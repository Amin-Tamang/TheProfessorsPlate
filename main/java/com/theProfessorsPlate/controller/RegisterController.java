package com.theProfessorsPlate.controller;

import com.theProfessorsPlate.model.User;
import com.theProfessorsPlate.service.UserService;
import com.theProfessorsPlate.utility.ValidationUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(asyncSupported = true, urlPatterns = {"/register"})
public class RegisterController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final Logger LOGGER = Logger.getLogger(RegisterController.class.getName());
    private final UserService userService = new UserService();
    
    @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/pages/register.jsp").forward(req, resp);
	}
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Retrieve form parameters
            String userName = request.getParameter("user_name");
            String userRole = request.getParameter("user_role");
            String userEmail = request.getParameter("user_email");
            String userPassword = request.getParameter("user_password");
            String phoneNumber = request.getParameter("phone_number");

            // Validate input parameters
            if (!ValidationUtil.isValidEmail(userEmail)) {
                response.sendRedirect(request.getContextPath() + "/register?error=Invalid email address.");
                return;
            }
            if (!ValidationUtil.isValidPassword(userPassword)) {
                response.sendRedirect(request.getContextPath() + "/register?error=Password must be at least 6 characters.");
                return;
            }
            if (userName == null || userName.trim().isEmpty()) {
                response.sendRedirect(request.getContextPath() + "/register?error=Full name is required.");
                return;
            }
            if (userRole == null || (!userRole.equals("admin") && !userRole.equals("customer"))) {
                response.sendRedirect(request.getContextPath() + "/register?error=Invalid user role.");
                return;
            }
            if (phoneNumber == null || phoneNumber.trim().isEmpty()) {
                response.sendRedirect(request.getContextPath() + "/register?error=Phone number is required.");
                return;
            }

            // Create a User object
            User user = new User(0, userName, userPassword, userRole, userEmail, phoneNumber);

            // Attempt to register the user
            boolean isRegistered = userService.registerUser(user);

            if (isRegistered) {
                LOGGER.log(Level.INFO, "User registered successfully: {0}", userEmail);
                response.sendRedirect(request.getContextPath() + "/login?success=Account created successfully!");
            } else {
                LOGGER.log(Level.WARNING, "Failed to register user: {0}", userEmail);
                response.sendRedirect(request.getContextPath() + "/register?error=Failed to create account. Try again.");
            }
        } catch (Exception e) {
            LOGGER.log(Level.SEVERE, "Error during registration", e);
            response.sendRedirect(request.getContextPath() + "/register?error=An unexpected error occurred. Please try again.");
        }
    }
}