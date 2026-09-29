<%-- =====================================================================
     services.jsp  –  Services page view
     ===================================================================== --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.lang.String" %>
<%@ include file="common/header.jsp" %>

<!-- ===== PAGE HERO ===== -->
<section class="page-hero d-flex align-items-center">
    <div class="container">
        <div class="row justify-content-center text-center">
            <div class="col-lg-7">
                <div class="section-badge mb-3">What We Do</div>
                <h1 class="page-hero-title">Our <span class="text-gradient">Services</span></h1>
                <p class="page-hero-subtitle mt-3">
                    End-to-end technology solutions tailored to accelerate your digital transformation.
                </p>
                <nav aria-label="breadcrumb" class="mt-4">
                    <ol class="breadcrumb justify-content-center">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/home">Home</a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">Services</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
</section>

<!-- ===== SERVICES CARDS ===== -->
<section class="section-padding">
    <div class="container">
        <div class="section-header text-center mb-5">
            <div class="section-badge">Our Offerings</div>
            <h2 class="section-title mt-3">Solutions Built for <span class="text-gradient">Scale</span></h2>
            <p class="section-subtitle">Choose from our suite of enterprise-grade services, each backed by proven methodologies.</p>
        </div>

        <div class="row g-4">
            <%
                String[][] servicesData = (String[][]) request.getAttribute("services");
                if (servicesData != null) {
                    int cardIndex = 0;
                    for (String[] svc : servicesData) {
                        cardIndex++;
            %>
            <div class="col-md-6 col-lg-4">
                <div class="service-card h-100">
                    <% if (svc[3] != null && !svc[3].isEmpty()) { %>
                    <span class="service-badge"><%= svc[3] %></span>
                    <% } %>
                    <div class="service-icon-wrap">
                        <i class="<%= svc[0] %>"></i>
                    </div>
                    <h5 class="service-title mt-4"><%= svc[1] %></h5>
                    <p class="service-desc mt-2"><%= svc[2] %></p>
                    <a href="${pageContext.request.contextPath}/contact" class="service-link mt-auto">
                        Get Started <i class="fas fa-arrow-right ms-1"></i>
                    </a>
                </div>
            </div>
            <%
                    }
                }
            %>
        </div>
    </div>
</section>

<!-- ===== PROCESS SECTION ===== -->
<section class="section-padding bg-dark-alt">
    <div class="container">
        <div class="section-header text-center mb-5">
            <div class="section-badge">How We Work</div>
            <h2 class="section-title mt-3">Our <span class="text-gradient">Process</span></h2>
            <p class="section-subtitle">A structured, transparent delivery model that keeps you in control at every stage.</p>
        </div>

        <div class="row g-0 position-relative">
            <div class="process-connector d-none d-lg-block"></div>
            <div class="col-sm-6 col-lg-3 text-center">
                <div class="process-step">
                    <div class="process-number">01</div>
                    <div class="process-icon"><i class="fas fa-search"></i></div>
                    <h6 class="process-title mt-3">Discovery</h6>
                    <p class="process-desc">Deep-dive into your requirements, existing systems, and business goals.</p>
                </div>
            </div>
            <div class="col-sm-6 col-lg-3 text-center">
                <div class="process-step">
                    <div class="process-number">02</div>
                    <div class="process-icon"><i class="fas fa-pencil-ruler"></i></div>
                    <h6 class="process-title mt-3">Design</h6>
                    <p class="process-desc">Architecture blueprints, UX wireframes, and technology stack selection.</p>
                </div>
            </div>
            <div class="col-sm-6 col-lg-3 text-center">
                <div class="process-step">
                    <div class="process-number">03</div>
                    <div class="process-icon"><i class="fas fa-laptop-code"></i></div>
                    <h6 class="process-title mt-3">Build</h6>
                    <p class="process-desc">Agile sprints with continuous integration, code reviews, and QA cycles.</p>
                </div>
            </div>
            <div class="col-sm-6 col-lg-3 text-center">
                <div class="process-step">
                    <div class="process-number">04</div>
                    <div class="process-icon"><i class="fas fa-rocket"></i></div>
                    <h6 class="process-title mt-3">Deploy &amp; Support</h6>
                    <p class="process-desc">Zero-downtime deployments followed by proactive monitoring and SLA-backed support.</p>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- ===== TECHNOLOGIES ===== -->
<section class="section-padding">
    <div class="container">
        <div class="section-header text-center mb-5">
            <div class="section-badge">Tech Stack</div>
            <h2 class="section-title mt-3">Technologies We <span class="text-gradient">Master</span></h2>
        </div>
        <div class="row g-3 justify-content-center">
            <div class="col-auto"><div class="tech-pill"><i class="fab fa-java me-2"></i>Java 17/21</div></div>
            <div class="col-auto"><div class="tech-pill"><i class="fas fa-feather me-2"></i>Apache Tomcat</div></div>
            <div class="col-auto"><div class="tech-pill"><i class="fas fa-leaf me-2"></i>Spring Boot</div></div>
            <div class="col-auto"><div class="tech-pill"><i class="fab fa-docker me-2"></i>Docker</div></div>
            <div class="col-auto"><div class="tech-pill"><i class="fab fa-aws me-2"></i>AWS</div></div>
            <div class="col-auto"><div class="tech-pill"><i class="fas fa-database me-2"></i>PostgreSQL</div></div>
            <div class="col-auto"><div class="tech-pill"><i class="fas fa-fire me-2"></i>Redis</div></div>
            <div class="col-auto"><div class="tech-pill"><i class="fab fa-react me-2"></i>React</div></div>
            <div class="col-auto"><div class="tech-pill"><i class="fab fa-jenkins me-2"></i>Jenkins</div></div>
            <div class="col-auto"><div class="tech-pill"><i class="fab fa-git-alt me-2"></i>GitOps</div></div>
        </div>
    </div>
</section>

<!-- ===== CTA ===== -->
<section class="section-padding bg-dark-alt">
    <div class="container">
        <div class="cta-card text-center">
            <div class="cta-glow"></div>
            <h2 class="cta-title">Let's build something great together</h2>
            <p class="cta-subtitle mt-3">Tell us about your project and we'll get back within 24 hours.</p>
            <div class="d-flex justify-content-center gap-3 mt-5 flex-wrap">
                <a href="${pageContext.request.contextPath}/contact" class="btn btn-cta-primary">
                    Request a Quote <i class="fas fa-file-invoice ms-2"></i>
                </a>
            </div>
        </div>
    </div>
</section>

<%@ include file="common/footer.jsp" %>
