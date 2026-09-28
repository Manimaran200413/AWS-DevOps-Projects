<%-- =====================================================================
     error404.jsp  –  404 Not Found error page
     ===================================================================== --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true" %>
<%
    request.setAttribute("pageTitle", "404 Not Found");
    request.setAttribute("activePage", "");
%>
<%@ include file="common/header.jsp" %>

<section class="error-section d-flex align-items-center">
    <div class="container text-center">
        <div class="error-code">404</div>
        <h2 class="error-title">Page Not Found</h2>
        <p class="error-subtitle mt-3">
            Oops! The page you're looking for doesn't exist or has been moved.
        </p>
        <div class="d-flex justify-content-center gap-3 mt-5 flex-wrap">
            <a href="${pageContext.request.contextPath}/home" class="btn btn-hero-primary">
                <i class="fas fa-house me-2"></i>Back to Home
            </a>
            <a href="${pageContext.request.contextPath}/contact" class="btn btn-hero-outline">
                <i class="fas fa-envelope me-2"></i>Contact Support
            </a>
        </div>
    </div>
</section>

<%@ include file="common/footer.jsp" %>
