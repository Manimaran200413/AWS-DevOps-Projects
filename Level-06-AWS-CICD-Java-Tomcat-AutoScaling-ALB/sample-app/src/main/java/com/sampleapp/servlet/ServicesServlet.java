package com.sampleapp.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * ServicesServlet - handles requests for the Services page.
 */
public class ServicesServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setAttribute("pageTitle", "Our Services");
        request.setAttribute("activePage", "services");

        // Services data: {icon, title, description, badge}
        String[][] services = {
            {"fas fa-cloud",          "Cloud Solutions",       "Deploy and manage your applications on any cloud provider with zero-downtime migrations and auto-scaling.", "Popular"},
            {"fas fa-shield-alt",     "Cybersecurity",         "Enterprise-grade security audits, penetration testing, and 24/7 monitoring to protect your digital assets.", ""},
            {"fas fa-robot",          "AI & Machine Learning", "Custom ML models, NLP pipelines, and intelligent automation that turn your data into competitive advantage.", "New"},
            {"fas fa-mobile-alt",     "Mobile Development",   "Native and cross-platform iOS/Android apps built with Flutter and React Native for maximum reach.", ""},
            {"fas fa-chart-line",     "Data Analytics",        "Real-time dashboards, BI integrations, and predictive analytics powered by cutting-edge data engineering.", ""},
            {"fas fa-headset",        "24/7 Support",          "Round-the-clock managed services, SLA-backed support, and proactive infrastructure monitoring.", ""}
        };
        request.setAttribute("services", services);

        request.getRequestDispatcher("/WEB-INF/views/services.jsp").forward(request, response);
    }
}
