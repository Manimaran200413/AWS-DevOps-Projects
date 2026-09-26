package com.sampleapp.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * ContactServlet - handles GET (display form) and POST (process form) for Contact page.
 */
public class ContactServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setAttribute("pageTitle", "Contact Us");
        request.setAttribute("activePage", "contact");
        request.getRequestDispatcher("/WEB-INF/views/contact.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        // Read form fields
        String name    = sanitize(request.getParameter("name"));
        String email   = sanitize(request.getParameter("email"));
        String subject = sanitize(request.getParameter("subject"));
        String message = sanitize(request.getParameter("message"));

        // Basic server-side validation
        boolean valid = true;
        StringBuilder errors = new StringBuilder();

        if (name == null || name.isBlank()) {
            valid = false;
            errors.append("Name is required. ");
        }
        if (email == null || !email.matches("^[\\w._%+\\-]+@[\\w.\\-]+\\.[a-zA-Z]{2,}$")) {
            valid = false;
            errors.append("A valid email address is required. ");
        }
        if (subject == null || subject.isBlank()) {
            valid = false;
            errors.append("Subject is required. ");
        }
        if (message == null || message.isBlank()) {
            valid = false;
            errors.append("Message is required. ");
        }

        request.setAttribute("pageTitle", "Contact Us");
        request.setAttribute("activePage", "contact");

        if (valid) {
            // In a real app: send email, persist to DB, etc.
            request.setAttribute("successMessage",
                "Thank you, " + name + "! Your message has been received. We'll get back to you shortly.");
        } else {
            request.setAttribute("errorMessage", errors.toString().trim());
            // Re-populate form fields so the user doesn't re-type everything
            request.setAttribute("formName",    name);
            request.setAttribute("formEmail",   email);
            request.setAttribute("formSubject", subject);
            request.setAttribute("formMessage", message);
        }

        request.getRequestDispatcher("/WEB-INF/views/contact.jsp").forward(request, response);
    }

    /** Strip leading/trailing whitespace and return null-safe value. */
    private String sanitize(String value) {
        return (value != null) ? value.trim() : "";
    }
}
