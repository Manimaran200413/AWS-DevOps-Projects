<%-- =====================================================================
     about.jsp  –  About page view
     ===================================================================== --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.lang.String" %>
<%@ include file="common/header.jsp" %>

<!-- ===== PAGE HERO ===== -->
<section class="page-hero d-flex align-items-center">
    <div class="container">
        <div class="row justify-content-center text-center">
            <div class="col-lg-7">
                <div class="section-badge mb-3">Our Story</div>
                <h1 class="page-hero-title">About <span class="text-gradient">Us</span></h1>
                <p class="page-hero-subtitle mt-3">
                    We are a passionate team of engineers, designers, and strategists committed to crafting software that makes a difference.
                </p>
                <nav aria-label="breadcrumb" class="mt-4">
                    <ol class="breadcrumb justify-content-center">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/home">Home</a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">About</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
</section>

<!-- ===== MISSION & VISION ===== -->
<section class="section-padding">
    <div class="container">
        <div class="row g-5 align-items-center">
            <div class="col-lg-6">
                <div class="section-badge mb-3">Who We Are</div>
                <h2 class="section-title">A Decade of <span class="text-gradient">Innovation</span></h2>
                <p class="text-muted mt-4 lh-lg">
                    Founded in 2010, SampleApp has grown from a small startup to a trusted technology partner for over 500 organisations worldwide. We combine deep technical expertise with a relentless focus on delivering measurable business outcomes.
                </p>
                <p class="text-muted lh-lg">
                    Our Java-first engineering culture means we build for reliability and longevity—systems that work flawlessly today and evolve gracefully tomorrow.
                </p>
                <div class="row g-4 mt-2">
                    <div class="col-6">
                        <div class="mini-stat-card">
                            <span class="mini-stat-number">500+</span>
                            <span class="mini-stat-label">Global Clients</span>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="mini-stat-card">
                            <span class="mini-stat-number">50+</span>
                            <span class="mini-stat-label">Team Members</span>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="mini-stat-card">
                            <span class="mini-stat-number">15+</span>
                            <span class="mini-stat-label">Years Experience</span>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="mini-stat-card">
                            <span class="mini-stat-number">99.9%</span>
                            <span class="mini-stat-label">Avg. Uptime</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="about-image-stack">
                    <div class="about-card-visual card-vis-1">
                        <i class="fas fa-bullseye"></i>
                        <div>
                            <strong>Our Mission</strong>
                            <p class="mb-0 small">Empowering businesses through cutting-edge technology solutions.</p>
                        </div>
                    </div>
                    <div class="about-card-visual card-vis-2">
                        <i class="fas fa-eye"></i>
                        <div>
                            <strong>Our Vision</strong>
                            <p class="mb-0 small">A world where great software is accessible to every organisation.</p>
                        </div>
                    </div>
                    <div class="about-card-visual card-vis-3">
                        <i class="fas fa-handshake"></i>
                        <div>
                            <strong>Our Values</strong>
                            <p class="mb-0 small">Integrity, innovation, and relentless pursuit of excellence.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- ===== TEAM SECTION ===== -->
<section class="section-padding bg-dark-alt">
    <div class="container">
        <div class="section-header text-center mb-5">
            <div class="section-badge">The People</div>
            <h2 class="section-title mt-3">Meet Our <span class="text-gradient">Team</span></h2>
            <p class="section-subtitle">Brilliant minds united by a passion for great software.</p>
        </div>

        <div class="row g-4 justify-content-center">
            <%
                String[][] teamData = (String[][]) request.getAttribute("team");
                if (teamData != null) {
                    for (String[] member : teamData) {
            %>
            <div class="col-sm-6 col-lg-3">
                <div class="team-card h-100 text-center">
                    <div class="team-avatar">
                        <i class="<%= member[2] %>"></i>
                    </div>
                    <h5 class="team-name mt-3"><%= member[0] %></h5>
                    <span class="team-role"><%= member[1] %></span>
                    <p class="team-bio mt-3"><%= member[3] %></p>
                    <div class="team-social d-flex justify-content-center gap-3 mt-3">
                        <a href="#" class="team-social-link" aria-label="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
                        <a href="#" class="team-social-link" aria-label="GitHub"><i class="fab fa-github"></i></a>
                        <a href="#" class="team-social-link" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                    </div>
                </div>
            </div>
            <%
                    }
                }
            %>
        </div>
    </div>
</section>

<!-- ===== VALUES SECTION ===== -->
<section class="section-padding">
    <div class="container">
        <div class="section-header text-center mb-5">
            <div class="section-badge">Core Values</div>
            <h2 class="section-title mt-3">What <span class="text-gradient">Drives</span> Us</h2>
        </div>
        <div class="row g-4">
            <div class="col-md-4">
                <div class="value-card text-center h-100">
                    <i class="fas fa-medal value-icon"></i>
                    <h5 class="mt-3">Quality First</h5>
                    <p class="text-muted">We never ship code we wouldn't stake our reputation on. Every release goes through rigorous review and testing.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="value-card text-center h-100">
                    <i class="fas fa-users value-icon"></i>
                    <h5 class="mt-3">Client Partnership</h5>
                    <p class="text-muted">Your success is our success. We embed into your team, understand your goals, and work as true partners.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="value-card text-center h-100">
                    <i class="fas fa-lightbulb value-icon"></i>
                    <h5 class="mt-3">Continuous Learning</h5>
                    <p class="text-muted">Technology evolves fast. Our engineers dedicate 20% of their time to research and mastering emerging technologies.</p>
                </div>
            </div>
        </div>
    </div>
</section>

<%@ include file="common/footer.jsp" %>
