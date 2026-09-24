package com.sampleapp.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * HomeServlet - handles requests for the Home page.
 */
public class HomeServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setAttribute("pageTitle", "Home");
        request.setAttribute("activePage", "home");
        request.getRequestDispatcher("/WEB-INF/views/home.jsp").forward(request, response);
    }
}
