package com.theProfessorsPlate.utility;

import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class RedirectionUtil {
    public static void redirect(HttpServletResponse response, String path) {
        try {
            response.sendRedirect(path);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}