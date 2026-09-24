# 📚 Level 3 - Project Documentation

## 📌 Overview

This folder contains the complete implementation documentation
for the:

# GitHub + Jenkins + Nginx CI/CD

### Automated Static Website Deployment on AWS EC2

The project demonstrates a CI/CD workflow where source code is
maintained in GitHub, GitHub triggers Jenkins through a webhook,
Jenkins performs Checkout, Test, and Deploy stages, and the
website is deployed to a separate Nginx web server through
SSH/SCP. :contentReference[oaicite:11]{index=11}

---

# 📄 Documentation File

The complete implementation report is available here:

### 📘 Level 3 Project Report

[Open Level-03-GitHub-Jenkins-Nginx-CICD-Documentation.pdf](https://github.com/Manimaran200413/AWS-DevOps-Projects/blob/a32d83ecee9de791638ef19592973b1ae4aec57d/Level-03-GitHub-Jenkins-Nginx-CICD/Documentation/Level_3_GitHub_Jenkins_Nginx_CICD_Documentation.pdf)

The PDF contains the complete project implementation,
architecture, configuration, testing, troubleshooting,
security considerations, and implementation evidence.

---

# 🏗️ Project Architecture

The documented architecture follows:

```text
Developer
    │
    │ Git Push
    ▼
GitHub
    │
    │ Webhook
    ▼
Jenkins EC2
    │
    ├── Checkout
    │
    ├── Test
    │
    └── Deploy
          │
          │ SSH / SCP
          ▼
      Nginx EC2
          │
          ▼
        Nginx
          │
          ▼
   Portfolio Website
          │
          ▼
       User Browser