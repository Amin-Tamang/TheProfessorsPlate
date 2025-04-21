package com.theprofessorplate.util;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * @author Ryan Khan
 */
//public class RedirectionUtil {
//
//	public void setMsgAttribute(HttpServletRequest req, String msgType, String msg) {
//		req.setAttribute(msgType, msg);
//	}
//
//	public void redirectToPage(HttpServletRequest req, HttpServletResponse resp, String page)
//			throws ServletException, IOException {
//		req.getRequestDispatcher(page).forward(req, resp);
//	}
//
//	public void setMsgAndRedirect(HttpServletRequest req, HttpServletResponse resp, String msgType, String msg,
//			String page) throws ServletException, IOException {
//		setMsgAttribute(req, msgType, msg);
//		redirectToPage(req, resp, page);
//	}
//
//}



public class RedirectionUtil {
    
    public static void redirectToLogin(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.sendRedirect(request.getContextPath() + "/login");
    }
    
    public static void redirectToHome(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.sendRedirect(request.getContextPath() + "/home");
    }
    
    public static void redirectWithError(HttpServletRequest request, HttpServletResponse response, 
                                         String page, String errorParam, String errorMessage) throws IOException {
        response.sendRedirect(request.getContextPath() + "/" + page + "?" + errorParam + "=" + errorMessage);
    }
}