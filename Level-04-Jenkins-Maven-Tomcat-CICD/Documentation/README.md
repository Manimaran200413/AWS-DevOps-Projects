# 📚 Level 4 - Project Documentation

## 📌 Overview

This folder contains the complete implementation documentation
for the:

# Jenkins + Maven + Tomcat CI/CD

### Java Web Application CI/CD on AWS EC2

The project demonstrates a CI/CD workflow where the Java web
application source code is maintained in GitHub, GitHub triggers
Jenkins through a webhook, Jenkins performs Checkout and Build
stages using Apache Maven, the application is packaged as a WAR
file, and the WAR is deployed to a separate Apache Tomcat server
through SSH/SCP.

The deployed Java web application is then accessed through
Tomcat on port 8080.

---

# 📄 Documentation File

The complete implementation report is available here:

### 📘 Level 4 Project Report

[Open Level-04-Jenkins-Maven-Tomcat-CICD-Documentation.pdf](https://github.com/Manimaran200413/AWS-DevOps-Projects/tree/5f05762a2e2c9ad71e880df98b6dbfcaaa93e1c1/Level-04-Jenkins-Maven-Tomcat-CICD/Documentation)

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
    ├── Maven
    │
    ├── Build
    │
    └── WAR
          │
          │ SSH / SCP
          ▼
     Tomcat EC2
          │
          ▼
     Apache Tomcat
          │
          │ :8080
          ▼
  Java Web Application
          │
          ▼
     User Browser