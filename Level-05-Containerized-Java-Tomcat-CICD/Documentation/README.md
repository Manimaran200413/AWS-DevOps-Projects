# 🚀 Containerized Java/Tomcat Application — DevOps CI/CD Project

This project is a Java web application deployed through a complete
CI/CD pipeline using Jenkins, Maven, Docker, Amazon ECR and AWS EC2.

The main purpose of this project is to demonstrate how a Java web
application can be **built, packaged, containerized, stored in a
private container registry, and automatically deployed to AWS EC2
using a CI/CD pipeline.**

Instead of manually building the Java application, creating a Docker
image, pushing the image to a registry, and deploying the application
on the server, this project automates the complete workflow.

The deployment flow is:

**Code Push → Jenkins → Maven Build → WAR → Docker Build → Amazon ECR → AWS EC2 → Tomcat → Live Java Application**

The project uses Apache Tomcat 10 as the Java application server
inside the Docker container and exposes the application through
port **8080**.

---

# 📄 Documentation File

The complete implementation report is available here:

### 📘 Level 5 Project Report

[Open Level_5_Containerized_Java_Tomcat_CICD_Project_Documentation_Complete.pdf](https://github.com/Manimaran200413/AWS-DevOps-Projects/blob/f8f874d429ff761655bb3bae5bf46b3aa9db478a/Level-05-Containerized-Java-Tomcat-CICD/Documentation/Level_5_Containerized_Java_Tomcat_CICD_Project_Documentation_Complete.pdf)

The PDF contains the complete project implementation,
architecture, configuration, testing, troubleshooting,
security considerations, and implementation evidence.

---

# 🚀 Architecture

```text
Developer
    ↓
Git / GitHub
    ↓
GitHub Webhook
    ↓
Jenkins
    ↓
Maven
    ↓
WAR File
    ↓
Docker Build
    ↓
Docker Image
    ↓
Amazon ECR
    ↓
AWS EC2 Docker Host
    ↓
Docker Container
    ↓
Apache Tomcat 10
    ↓
Java Web Application
    ↓
🌐 Live Application