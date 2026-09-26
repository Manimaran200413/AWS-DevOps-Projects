# 🚀 Level 5 - Containerized Java/Tomcat Application CI/CD

## 📌 Overview

This project demonstrates an end-to-end Continuous Integration
and Continuous Deployment (CI/CD) workflow for a Java web
application packaged as a WAR file and deployed inside a Docker
container running Apache Tomcat on AWS EC2.

The project integrates:

- GitHub
- Jenkins
- Apache Maven
- Docker
- Amazon ECR
- AWS EC2
- Apache Tomcat
- AWS CLI
- GitHub Webhook

The complete CI/CD flow is:

```text
Developer
    ↓
GitHub
    ↓
GitHub Webhook
    ↓
Jenkins
    ↓
Checkout
    ↓
Maven Build
    ↓
WAR File
    ↓
Docker Build
    ↓
Docker Image
    ↓
Amazon ECR
    ↓
Docker EC2
    ↓
Docker Container
    ↓
Tomcat 10
    ↓
Java Web Application
    ↓
User