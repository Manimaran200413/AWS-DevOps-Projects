<%-- =====================================================================
     footer.jsp  –  Shared footer included by all pages.
     ===================================================================== --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!-- ===== Footer ===== -->
<footer class="site-footer">
    <div class="container">

        <div class="row g-5 py-5">

            <!-- Brand Column -->
            <div class="col-lg-4">
                <a class="footer-brand d-flex align-items-center gap-2 mb-3 text-decoration-none" href="${pageContext.request.contextPath}/home">
                    <span class="brand-icon"><i class="fas fa-bolt"></i></span>
                    <span class="brand-text">Sample<span class="brand-accent">App</span></span>
                </a>
                <p class="footer-description">
                    Building exceptional digital experiences with modern Java, JSP, and enterprise-grade architecture deployed on Apache Tomcat.
                </p>
                <div class="social-links d-flex gap-3 mt-4">
                    <a href="#" class="social-link" aria-label="GitHub"><i class="fab fa-github"></i></a>
                    <a href="#" class="social-link" aria-label="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
                    <a href="#" class="social-link" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                    <a href="#" class="social-link" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
                </div>
            </div>

            <!-- Quick Links -->
            <div class="col-6 col-lg-2 offset-lg-1">
                <h6 class="footer-heading">Quick Links</h6>
                <ul class="footer-links">
                    <li><a href="${pageContext.request.contextPath}/home"><i class="fas fa-chevron-right me-1"></i>Home</a></li>
                    <li><a href="${pageContext.request.contextPath}/about"><i class="fas fa-chevron-right me-1"></i>About</a></li>
                    <li><a href="${pageContext.request.contextPath}/services"><i class="fas fa-chevron-right me-1"></i>Services</a></li>
                    <li><a href="${pageContext.request.contextPath}/contact"><i class="fas fa-chevron-right me-1"></i>Contact</a></li>
                </ul>
            </div>

            <!-- Services -->
            <div class="col-6 col-lg-2">
                <h6 class="footer-heading">Services</h6>
                <ul class="footer-links">
                    <li><a href="${pageContext.request.contextPath}/services"><i class="fas fa-chevron-right me-1"></i>Cloud Solutions</a></li>
                    <li><a href="${pageContext.request.contextPath}/services"><i class="fas fa-chevron-right me-1"></i>Cybersecurity</a></li>
                    <li><a href="${pageContext.request.contextPath}/services"><i class="fas fa-chevron-right me-1"></i>AI & ML</a></li>
                    <li><a href="${pageContext.request.contextPath}/services"><i class="fas fa-chevron-right me-1"></i>Mobile Dev</a></li>
                    <li><a href="${pageContext.request.contextPath}/services"><i class="fas fa-chevron-right me-1"></i>Analytics</a></li>
                </ul>
            </div>

            <!-- Contact Info -->
            <div class="col-lg-3">
                <h6 class="footer-heading">Get In Touch</h6>
                <ul class="footer-contact">
                    <li>
                        <i class="fas fa-map-marker-alt"></i>
                        <span>123 Tech Park, Hyderabad<br/>Telangana, India 500001</span>
                    </li>
                    <li>
                        <i class="fas fa-phone"></i>
                        <a href="tel:+919876543210">+91 98765 43210</a>
                    </li>
                    <li>
                        <i class="fas fa-envelope"></i>
                        <a href="mailto:hello@sampleapp.com">hello@sampleapp.com</a>
                    </li>
                </ul>
            </div>

        </div>

        <!-- Bottom Bar -->
        <div class="footer-bottom">
            <div class="row align-items-center">
                <div class="col-md-6 text-center text-md-start">
                    <p class="mb-0">
                        &copy; 2025 <strong>SampleApp</strong>. All rights reserved.
                        Built with <i class="fas fa-heart text-danger mx-1"></i> using Java &amp; JSP.
                    </p>
                </div>
                <div class="col-md-6 text-center text-md-end mt-2 mt-md-0">
                    <span class="tech-badge"><i class="fab fa-java me-1"></i>Java 17</span>
                    <span class="tech-badge"><i class="fas fa-feather me-1"></i>Tomcat 10</span>
                    <span class="tech-badge"><i class="fab fa-bootstrap me-1"></i>Bootstrap 5</span>
                </div>
            </div>
        </div>

    </div>
</footer>
<!-- End Footer -->

<!-- Bootstrap 5.3 Bundle (Popper included) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc4s9bIOgUxi8T/jzmDn3a0A4uAHFnFsR6UPbQAF7b2g"
        crossorigin="anonymous"></script>

<!-- Custom JS -->
<script src="${pageContext.request.contextPath}/js/app.js"></script>

</body>
</html>
