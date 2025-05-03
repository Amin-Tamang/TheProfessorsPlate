package com.Coursework.util;

import jakarta.servlet.http.Cookie;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.util.Arrays;


public class CookieUtil {

    /**
     * Adds a cookie with the specified name, value, and maximum age.
     *
     * @param response the HttpServletResponse to add the cookie to
     * @param name     the name of the cookie
     * @param value    the value of the cookie
     * @param maxAge   the maximum age of the cookie in seconds
     */
    public static void addCookie(HttpServletResponse response, String name, String value, int maxAge) {
        Cookie cookie = new Cookie(name, value);
        cookie.setMaxAge(maxAge);
        cookie.setPath("/"); // Make cookie available to the entire application
        response.addCookie(cookie);
    }

  
    public static Cookie getCookie(HttpServletRequest request, String name) {
        if (request.getCookies() != null) {
            return Arrays.stream(request.getCookies())
                    .filter(cookie -> name.equals(cookie.getName()))
                    .findFirst()
                    .orElse(null);
        }
        return null;
    }

    public static void deleteCookie(HttpServletResponse response, String name) {
        Cookie cookie = new Cookie(name, null);
        cookie.setMaxAge(60*60*24);
        cookie.setPath("/"); // Make cookie available to the entire application
        response.addCookie(cookie);
    }
}
