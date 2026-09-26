<%-- =====================================================================
     contact.jsp  –  Contact page view with form
     ===================================================================== --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="common/header.jsp" %>

<!-- ===== PAGE HERO ===== -->
<section class="page-hero d-flex align-items-center">
    <div class="container">
        <div class="row justify-content-center text-center">
            <div class="col-lg-7">
                <div class="section-badge mb-3">Reach Out</div>
                <h1 class="page-hero-title">Contact <span class="text-gradient">Us</span></h1>
                <p class="page-hero-subtitle mt-3">
                    Have a project in mind? A question? Just want to say hello? Drop us a message.
                </p>
                <nav aria-label="breadcrumb" class="mt-4">
                    <ol class="breadcrumb justify-content-center">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/home">Home</a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">Contact</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
</section>

<!-- ===== CONTACT SECTION ===== -->
<section class="section-padding">
    <div class="container">
        <div class="row g-5">

            <!-- Contact Info Column -->
            <div class="col-lg-4">
                <h3 class="contact-info-title mb-4">Get in <span class="text-gradient">Touch</span></h3>
                <p class="text-muted mb-5 lh-lg">
                    Our team is ready to help. Reach out via the form, give us a call, or visit our office. We typically respond within 2 business hours.
                </p>

                <div class="contact-info-item">
                    <div class="contact-info-icon"><i class="fas fa-map-marker-alt"></i></div>
                    <div>
                        <h6>Visit Us</h6>
                        <p class="text-muted mb-0">123 Tech Park, Hyderabad<br/>Telangana, India 500001</p>
                    </div>
                </div>

                <div class="contact-info-item">
                    <div class="contact-info-icon"><i class="fas fa-phone"></i></div>
                    <div>
                        <h6>Call Us</h6>
                        <p class="text-muted mb-0">
                            <a href="tel:+919876543210" class="contact-link">+91 98765 43210</a>
                        </p>
                    </div>
                </div>

                <div class="contact-info-item">
                    <div class="contact-info-icon"><i class="fas fa-envelope"></i></div>
                    <div>
                        <h6>Email Us</h6>
                        <p class="text-muted mb-0">
                            <a href="mailto:hello@sampleapp.com" class="contact-link">hello@sampleapp.com</a>
                        </p>
                    </div>
                </div>

                <div class="contact-info-item">
                    <div class="contact-info-icon"><i class="fas fa-clock"></i></div>
                    <div>
                        <h6>Business Hours</h6>
                        <p class="text-muted mb-0">Mon – Fri: 9:00 AM – 6:00 PM IST<br/>Sat: 10:00 AM – 2:00 PM IST</p>
                    </div>
                </div>

                <div class="social-links d-flex gap-3 mt-4">
                    <a href="#" class="social-link" aria-label="GitHub"><i class="fab fa-github"></i></a>
                    <a href="#" class="social-link" aria-label="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
                    <a href="#" class="social-link" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                </div>
            </div>

            <!-- Contact Form Column -->
            <div class="col-lg-8">
                <div class="contact-form-card">

                    <!-- Success Alert -->
                    <% if (request.getAttribute("successMessage") != null) { %>
                    <div class="alert alert-success-custom d-flex align-items-center gap-3 mb-4" role="alert" id="successAlert">
                        <i class="fas fa-circle-check fa-lg flex-shrink-0"></i>
                        <div>${successMessage}</div>
                    </div>
                    <% } %>

                    <!-- Error Alert -->
                    <% if (request.getAttribute("errorMessage") != null) { %>
                    <div class="alert alert-error-custom d-flex align-items-center gap-3 mb-4" role="alert">
                        <i class="fas fa-triangle-exclamation fa-lg flex-shrink-0"></i>
                        <div>${errorMessage}</div>
                    </div>
                    <% } %>

                    <h4 class="form-section-title mb-4">Send us a Message</h4>

                    <form action="${pageContext.request.contextPath}/contact"
                          method="post"
                          id="contactForm"
                          novalidate>

                        <div class="row g-4">

                            <!-- Name -->
                            <div class="col-md-6">
                                <label for="name" class="form-label-custom">Full Name <span class="text-danger">*</span></label>
                                <div class="input-group-custom">
                                    <i class="fas fa-user input-icon"></i>
                                    <input type="text"
                                           id="name"
                                           name="name"
                                           class="form-input-custom"
                                           placeholder="John Doe"
                                           value="${formName}"
                                           required />
                                </div>
                                <div class="invalid-feedback-custom" id="nameFeedback">Please enter your full name.</div>
                            </div>

                            <!-- Email -->
                            <div class="col-md-6">
                                <label for="email" class="form-label-custom">Email Address <span class="text-danger">*</span></label>
                                <div class="input-group-custom">
                                    <i class="fas fa-envelope input-icon"></i>
                                    <input type="email"
                                           id="email"
                                           name="email"
                                           class="form-input-custom"
                                           placeholder="john@example.com"
                                           value="${formEmail}"
                                           required />
                                </div>
                                <div class="invalid-feedback-custom" id="emailFeedback">Please enter a valid email address.</div>
                            </div>

                            <!-- Subject -->
                            <div class="col-12">
                                <label for="subject" class="form-label-custom">Subject <span class="text-danger">*</span></label>
                                <div class="input-group-custom">
                                    <i class="fas fa-tag input-icon"></i>
                                    <input type="text"
                                           id="subject"
                                           name="subject"
                                           class="form-input-custom"
                                           placeholder="Project Enquiry / General Question"
                                           value="${formSubject}"
                                           required />
                                </div>
                                <div class="invalid-feedback-custom" id="subjectFeedback">Please enter a subject.</div>
                            </div>

                            <!-- Message -->
                            <div class="col-12">
                                <label for="message" class="form-label-custom">Message <span class="text-danger">*</span></label>
                                <div class="input-group-custom textarea-group">
                                    <i class="fas fa-comment-dots input-icon"></i>
                                    <textarea id="message"
                                              name="message"
                                              class="form-input-custom form-textarea-custom"
                                              rows="5"
                                              placeholder="Tell us about your project, requirements, or any questions…"
                                              required>${formMessage}</textarea>
                                </div>
                                <div class="invalid-feedback-custom" id="messageFeedback">Please enter your message.</div>
                            </div>

                            <!-- Submit -->
                            <div class="col-12">
                                <button type="submit" class="btn btn-submit-form" id="submitBtn">
                                    <span class="btn-text">Send Message</span>
                                    <i class="fas fa-paper-plane ms-2"></i>
                                </button>
                            </div>

                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>
</section>

<!-- ===== MAP PLACEHOLDER ===== -->
<section class="map-section">
    <div class="map-placeholder d-flex align-items-center justify-content-center">
        <div class="text-center">
            <i class="fas fa-map-marked-alt fa-3x text-gradient mb-3"></i>
            <p class="text-muted mb-0">Interactive Map — Hyderabad, Telangana, India</p>
        </div>
    </div>
</section>

<%@ include file="common/footer.jsp" %>
