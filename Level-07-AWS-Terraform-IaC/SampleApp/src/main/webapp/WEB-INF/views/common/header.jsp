<%-- =====================================================================
     header.jsp  –  Shared navigation header included by all pages.
     Expects:
       pageTitle  (String) – page-specific title suffix
       activePage (String) – "home" | "about" | "services" | "contact"
     ===================================================================== --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description"
          content="SampleApp – Modern Java web application built with JSP, Bootstrap 5 and deployed on Apache Tomcat." />
    <meta name="theme-color" content="#0f172a" />

    <title>${pageTitle} – SampleApp</title>

    <!-- Bootstrap 5.3 CSS -->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
          crossorigin="anonymous" />

    <!-- Font Awesome 6 Free -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"
          crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- Google Fonts: Inter -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap"
          rel="stylesheet" />

    <!-- Custom CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
</head>
<body>

<!-- ===== Navigation Bar ===== -->
<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
    <div class="container">

        <!-- Brand -->
        <a class="navbar-brand d-flex align-items-center gap-2" href="${pageContext.request.contextPath}/home">
            <span class="brand-icon"><i class="fas fa-bolt"></i></span>
            <span class="brand-text">Sample<span class="brand-accent">App</span></span>
        </a>

        <!-- Hamburger -->
        <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse" data-bs-target="#navbarContent"
                aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Nav Links -->
        <div class="collapse navbar-collapse" id="navbarContent">
            <ul class="navbar-nav ms-auto align-items-lg-center gap-lg-1">

                <li class="nav-item">
                    <a class="nav-link ${activePage == 'home'    ? 'active' : ''}"
                       href="${pageContext.request.contextPath}/home">
                        <i class="fas fa-house me-1"></i>Home
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link ${activePage == 'about'   ? 'active' : ''}"
                       href="${pageContext.request.contextPath}/about">
                        <i class="fas fa-circle-info me-1"></i>About
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link ${activePage == 'services' ? 'active' : ''}"
                       href="${pageContext.request.contextPath}/services">
                        <i class="fas fa-layer-group me-1"></i>Services
                    </a>
                </li>
                <li class="nav-item ms-lg-2">
                    <a class="btn btn-primary-custom ${activePage == 'contact' ? 'active' : ''}"
                       href="${pageContext.request.contextPath}/contact">
                        <i class="fas fa-envelope me-1"></i>Contact Us
                    </a>
                </li>

            </ul>
        </div>
    </div>
</nav>
<!-- End Navigation Bar -->
