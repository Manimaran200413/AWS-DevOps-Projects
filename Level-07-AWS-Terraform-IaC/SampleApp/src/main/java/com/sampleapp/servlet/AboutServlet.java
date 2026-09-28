package com.sampleapp.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * AboutServlet - handles requests for the About page.
 */
public class AboutServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setAttribute("pageTitle", "About Us");
        request.setAttribute("activePage", "about");

        // Team members data passed to JSP
        String[][] team = {
            {"Harsha Vardhan",  "Founder & CEO",     "fas fa-user-tie",    "Visionary leader with 15+ years in enterprise software."},
            {"Priya Sharma",    "Lead Architect",    "fas fa-drafting-compass", "Designs scalable cloud-native architectures."},
            {"Arjun Mehta",     "Full Stack Dev",    "fas fa-code",         "Passionate about clean code and great UX."},
            {"Neha Kapoor",     "DevOps Engineer",   "fas fa-server",       "Keeps our pipelines green and deployments smooth."}
        };
        request.setAttribute("team", team);

        request.getRequestDispatcher("/WEB-INF/views/about.jsp").forward(request, response);
    }
}
