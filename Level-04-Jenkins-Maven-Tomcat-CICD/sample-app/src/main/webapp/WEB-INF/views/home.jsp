<%-- =====================================================================
     home.jsp  –  Home page view
     ===================================================================== --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="common/header.jsp" %>

<!-- ===== HERO SECTION ===== -->
<section class="hero-section d-flex align-items-center" id="hero">
    <div class="hero-bg-shapes">
        <div class="shape shape-1"></div>
        <div class="shape shape-2"></div>
        <div class="shape shape-3"></div>
    </div>
    <div class="container position-relative">
        <div class="row align-items-center g-5">
            <div class="col-lg-6" data-aos="fade-right">
                <div class="hero-badge mb-4">
                    <i class="fas fa-star me-2"></i>Trusted by 500+ Companies
                </div>
                <h1 class="hero-title">
                    Build <span class="text-gradient">Exceptional</span><br/>
                    Digital Experiences
                </h1>
                <p class="hero-subtitle mt-4">
                    Enterprise-grade Java web solutions crafted with precision, deployed at scale.
                    From cloud migrations to AI-powered applications—we make it happen.
                </p>
                <div class="d-flex flex-wrap gap-3 mt-5">
                    <a href="${pageContext.request.contextPath}/services"
                       class="btn btn-hero-primary">
                        Explore Services <i class="fas fa-arrow-right ms-2"></i>
                    </a>
                    <a href="${pageContext.request.contextPath}/contact"
                       class="btn btn-hero-outline">
                        <i class="fas fa-phone me-2"></i>Get In Touch
                    </a>
                </div>
                <!-- Stats Row -->
                <div class="hero-stats d-flex flex-wrap gap-4 mt-5">
                    <div class="stat-item">
                        <span class="stat-number" data-count="500">0</span><span class="stat-suffix">+</span>
                        <span class="stat-label">Clients</span>
                    </div>
                    <div class="stat-item">
                        <span class="stat-number" data-count="98">0</span><span class="stat-suffix">%</span>
                        <span class="stat-label">Uptime SLA</span>
                    </div>
                    <div class="stat-item">
                        <span class="stat-number" data-count="15">0</span><span class="stat-suffix">+</span>
                        <span class="stat-label">Years Exp.</span>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 text-center" data-aos="fade-left">
                <div class="hero-illustration">
                    <div class="floating-card card-1">
                        <i class="fab fa-java"></i>
                        <span>Java 17</span>
                    </div>
                    <div class="floating-card card-2">
                        <i class="fas fa-server"></i>
                        <span>Tomcat 10</span>
                    </div>
                    <div class="floating-card card-3">
                        <i class="fas fa-cloud"></i>
                        <span>Cloud Ready</span>
                    </div>
                    <div class="hero-orb">
                        <i class="fas fa-bolt hero-bolt-icon"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- ===== TRUSTED BY LOGOS ===== -->
<section class="trust-section py-4">
    <div class="container">
        <p class="trust-label text-center mb-4">Trusted by industry leaders</p>
        <div class="trust-logos d-flex flex-wrap justify-content-center align-items-center gap-5">
            <div class="trust-logo"><i class="fab fa-aws"></i> AWS Partner</div>
            <div class="trust-logo"><i class="fab fa-google"></i> Google Cloud</div>
            <div class="trust-logo"><i class="fab fa-microsoft"></i> Microsoft Azure</div>
            <div class="trust-logo"><i class="fab fa-docker"></i> Docker Ready</div>
            <div class="trust-logo"><i class="fas fa-shield-alt"></i> ISO 27001</div>
        </div>
    </div>
</section>

<!-- ===== FEATURES SECTION ===== -->
<section class="features-section section-padding" id="features">
    <div class="container">
        <div class="section-header text-center mb-5">
            <div class="section-badge">Why Choose Us</div>
            <h2 class="section-title mt-3">Engineered for <span class="text-gradient">Excellence</span></h2>
            <p class="section-subtitle">Every line of code is crafted with performance, security, and scalability in mind.</p>
        </div>

        <div class="row g-4">
            <div class="col-md-6 col-lg-4">
                <div class="feature-card h-100">
                    <div class="feature-icon-wrap">
                        <i class="fas fa-zap"></i>
                    </div>
                    <h5 class="feature-title">Blazing Fast</h5>
                    <p class="feature-desc">Optimized JVM tuning and connection pooling deliver sub-100ms response times even under heavy load.</p>
                </div>
            </div>
            <div class="col-md-6 col-lg-4">
                <div class="feature-card h-100">
                    <div class="feature-icon-wrap">
                        <i class="fas fa-lock"></i>
                    </div>
                    <h5 class="feature-title">Secure by Design</h5>
                    <p class="feature-desc">OWASP-hardened applications with built-in XSS, CSRF, and SQL-injection protection at every layer.</p>
                </div>
            </div>
            <div class="col-md-6 col-lg-4">
                <div class="feature-card h-100">
                    <div class="feature-icon-wrap">
                        <i class="fas fa-expand-arrows-alt"></i>
                    </div>
                    <h5 class="feature-title">Infinitely Scalable</h5>
                    <p class="feature-desc">Horizontally scalable architecture that grows seamlessly from startup to enterprise workloads.</p>
                </div>
            </div>
            <div class="col-md-6 col-lg-4">
                <div class="feature-card h-100">
                    <div class="feature-icon-wrap">
                        <i class="fas fa-code-branch"></i>
                    </div>
                    <h5 class="feature-title">CI/CD Ready</h5>
                    <p class="feature-desc">Maven-based build pipeline integrates with Jenkins, GitHub Actions, and all major CI platforms.</p>
                </div>
            </div>
            <div class="col-md-6 col-lg-4">
                <div class="feature-card h-100">
                    <div class="feature-icon-wrap">
                        <i class="fas fa-database"></i>
                    </div>
                    <h5 class="feature-title">Any Database</h5>
                    <p class="feature-desc">Pluggable data layer supporting MySQL, PostgreSQL, Oracle, MongoDB, and Redis out of the box.</p>
                </div>
            </div>
            <div class="col-md-6 col-lg-4">
                <div class="feature-card h-100">
                    <div class="feature-icon-wrap">
                        <i class="fas fa-life-ring"></i>
                    </div>
                    <h5 class="feature-title">24/7 Support</h5>
                    <p class="feature-desc">Dedicated SRE team with P1 incident response in under 15 minutes, guaranteed by SLA.</p>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- ===== CTA SECTION ===== -->
<section class="cta-section section-padding">
    <div class="container">
        <div class="cta-card text-center">
            <div class="cta-glow"></div>
            <h2 class="cta-title">Ready to transform your business?</h2>
            <p class="cta-subtitle mt-3">
                Let's discuss how SampleApp can accelerate your digital transformation journey.
            </p>
            <div class="d-flex justify-content-center gap-3 mt-5 flex-wrap">
                <a href="${pageContext.request.contextPath}/contact" class="btn btn-cta-primary">
                    Start a Project <i class="fas fa-rocket ms-2"></i>
                </a>
                <a href="${pageContext.request.contextPath}/services" class="btn btn-cta-outline">
                    View Services <i class="fas fa-arrow-right ms-2"></i>
                </a>
            </div>
        </div>
    </div>
</section>

<%@ include file="common/footer.jsp" %>
