/**
 * app.js – SampleApp custom JavaScript
 *
 * Responsibilities:
 *  1. Navbar scroll effect (glassmorphism → solid on scroll)
 *  2. Animated counter (stat numbers in hero)
 *  3. Client-side contact form validation
 *  4. Scroll-reveal fade-in animations
 *  5. Navbar active-link auto-highlight on page load
 */

'use strict';

/* =========================================================
   1. Navbar – add .scrolled class on scroll
   ========================================================= */
(function initNavScroll() {
    const nav = document.getElementById('mainNav');
    if (!nav) return;

    const onScroll = () => {
        nav.classList.toggle('scrolled', window.scrollY > 20);
    };
    window.addEventListener('scroll', onScroll, { passive: true });
    onScroll();  // run on load
})();


/* =========================================================
   2. Animated Counters
   ========================================================= */
(function initCounters() {
    const counters = document.querySelectorAll('[data-count]');
    if (!counters.length) return;

    const easeOut = (t) => 1 - Math.pow(1 - t, 3);
    const DURATION = 2000;  // ms

    const animateCounter = (el) => {
        const target = parseInt(el.dataset.count, 10);
        const start  = performance.now();

        const step = (now) => {
            const elapsed = now - start;
            const progress = Math.min(elapsed / DURATION, 1);
            el.textContent = Math.floor(easeOut(progress) * target);
            if (progress < 1) requestAnimationFrame(step);
            else el.textContent = target;
        };
        requestAnimationFrame(step);
    };

    // Only start when element enters viewport
    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                animateCounter(entry.target);
                observer.unobserve(entry.target);
            }
        });
    }, { threshold: 0.5 });

    counters.forEach(el => observer.observe(el));
})();


/* =========================================================
   3. Contact Form – client-side validation
   ========================================================= */
(function initContactForm() {
    const form = document.getElementById('contactForm');
    if (!form) return;

    const validate = (input) => {
        const value = input.value.trim();
        let valid = true;

        if (input.type === 'email') {
            valid = /^[\w._%+\-]+@[\w.\-]+\.[a-zA-Z]{2,}$/.test(value);
        } else {
            valid = value.length > 0;
        }

        const feedbackId = input.id + 'Feedback';
        const feedback   = document.getElementById(feedbackId);

        if (feedback) feedback.classList.toggle('show', !valid);
        input.style.borderColor = valid ? '' : 'rgba(248, 113, 113, 0.6)';

        return valid;
    };

    // Real-time field validation
    form.querySelectorAll('.form-input-custom').forEach(input => {
        ['blur', 'input'].forEach(evt =>
            input.addEventListener(evt, () => validate(input))
        );
    });

    // Full validation on submit
    form.addEventListener('submit', (e) => {
        const inputs  = form.querySelectorAll('.form-input-custom');
        const allValid = Array.from(inputs).map(validate).every(Boolean);

        if (!allValid) {
            e.preventDefault();
            // Scroll to first invalid field
            const firstInvalid = form.querySelector('[style*="border-color"]');
            if (firstInvalid) firstInvalid.scrollIntoView({ behavior: 'smooth', block: 'center' });
            return;
        }

        // Show loading state
        const btn = document.getElementById('submitBtn');
        if (btn) {
            btn.disabled = true;
            btn.innerHTML = '<span class="btn-text">Sending…</span> <i class="fas fa-circle-notch fa-spin ms-2"></i>';
        }
    });
})();


/* =========================================================
   4. Scroll-reveal animations (Intersection Observer)
   ========================================================= */
(function initScrollReveal() {
    const elements = document.querySelectorAll(
        '.feature-card, .service-card, .team-card, .value-card, .mini-stat-card, .about-card-visual'
    );
    if (!elements.length) return;

    const observer = new IntersectionObserver((entries) => {
        entries.forEach((entry, i) => {
            if (entry.isIntersecting) {
                // Stagger delay based on position in NodeList
                const delay = (Array.from(elements).indexOf(entry.target) % 4) * 80;
                entry.target.style.transitionDelay = delay + 'ms';
                entry.target.classList.add('fade-in-up');
                observer.unobserve(entry.target);
            }
        });
    }, { threshold: 0.1, rootMargin: '0px 0px -40px 0px' });

    elements.forEach(el => {
        el.style.opacity = '0';
        observer.observe(el);
    });
})();


/* =========================================================
   5. Auto-dismiss success alert after 5s
   ========================================================= */
(function initSuccessAlert() {
    const alert = document.getElementById('successAlert');
    if (!alert) return;

    setTimeout(() => {
        alert.style.transition = 'opacity 0.5s ease';
        alert.style.opacity = '0';
        setTimeout(() => alert.remove(), 500);
    }, 5000);
})();


/* =========================================================
   6. Smooth scroll for all in-page anchor links
   ========================================================= */
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', (e) => {
        const target = document.querySelector(anchor.getAttribute('href'));
        if (!target) return;
        e.preventDefault();
        target.scrollIntoView({ behavior: 'smooth', block: 'start' });
    });
});
