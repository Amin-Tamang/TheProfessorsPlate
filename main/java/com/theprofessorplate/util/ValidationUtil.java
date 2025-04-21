package com.theprofessorplate.servlet;

import com.theprofessorplate.util.ValidationUtil; 
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirm-password");

        ValidationUtil validator = new ValidationUtil();

       
        boolean validFullname = !validator.isNullOrEmpty(fullname);
        boolean validEmail = validator.isValidEmail(email);
        boolean validPassword = validator.isValidPassword(password);
        boolean matches = validator.doPasswordsMatch(password, confirmPassword);

        StringBuilder errorMessage = new StringBuilder();
        if (!validFullname) {
            errorMessage.append("Full name cannot be empty. ");
        }
        if (!validEmail) {
            errorMessage.append("Email is not valid. ");
        }
        if (!validPassword) {
            errorMessage.append("Password must contain at least one capital letter, one number, and one symbol, and be a minimum of 8 characters long. ");
        }
        if (!matches) {
            errorMessage.append("Passwords do not match. ");
        }

        if (errorMessage.length() > 0) {
            request.setAttribute("errorMessage", errorMessage.toString());
            request.getRequestDispatcher("/register.jsp").forward(request, response);
            return;
        }

        response.sendRedirect("login.html");
    }
}
