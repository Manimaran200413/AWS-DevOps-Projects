# 🚀 Level 4 - Jenkins + Maven + Tomcat CI/CD

![GitHub](https://img.shields.io/badge/GitHub-Source%20Control-black?logo=github)
![Jenkins](https://img.shields.io/badge/Jenkins-CI%2FCD-red?logo=jenkins)
![Maven](https://img.shields.io/badge/Apache%20Maven-Build-orange?logo=apachemaven)
![Java](https://img.shields.io/badge/Java-17-orange?logo=openjdk)
![Tomcat](https://img.shields.io/badge/Apache%20Tomcat-10.1-F8DC75?logo=apachetomcat)
![AWS](https://img.shields.io/badge/AWS-EC2-orange?logo=amazon-aws)
![SSH](https://img.shields.io/badge/SSH-Secure%20Deployment-blue)
![SCP](https://img.shields.io/badge/SCP-Artifact%20Transfer-blue)

# 📌 Project Overview

This Level 4 project demonstrates a Continuous Integration and
Continuous Deployment (CI/CD) workflow for a Java web application
using GitHub, Jenkins, Apache Maven, Apache Tomcat, and AWS EC2.

The project automates the process of retrieving Java application
source code from GitHub, building and packaging the application
using Maven, generating a WAR artifact, and deploying the
artifact to a separate Apache Tomcat server through SSH/SCP.

The deployed Java web application is then accessed through the
Tomcat HTTP endpoint on port 8080.

---

# 🎯 Objectives

The main objectives of this project are:

- Maintain the Java web application source code in GitHub.
- Use Jenkins as the CI/CD orchestration server.
- Use Apache Maven to compile, test, and package the application.
- Generate a deployable WAR artifact.
- Automate application deployment using Jenkins.
- Transfer the WAR artifact using SSH/SCP.
- Deploy the application to Apache Tomcat.
- Run the application on an AWS EC2 server.
- Validate the application through Tomcat Manager.
- Validate the final application through a web browser.
- Maintain a repeatable Java application deployment workflow.

These objectives follow the project documentation. :contentReference[oaicite:4]{index=4}

---

# 🏗️ System Architecture

```text
                       👨‍💻 Developer
                            │
                            │ Git Push
                            ▼
                     ┌──────────────┐
                     │    GitHub    │
                     │              │
                     │ Java Source  │
                     │ Jenkinsfile  │
                     └──────┬───────┘
                            │
                            │ Webhook
                            ▼
                     ┌──────────────┐
                     │   Jenkins    │
                     │    EC2       │
                     │              │
                     │  Checkout    │
                     │     ↓        │
                     │    Maven     │
                     │     ↓        │
                     │     WAR      │
                     │     ↓        │
                     │   Deploy     │
                     └──────┬───────┘
                            │
                         SSH/SCP
                            │
                            ▼
                     ┌──────────────┐
                     │   Tomcat     │
                     │    EC2       │
                     │              │
                     │ Apache Tomcat│
                     │     :8080    │
                     └──────┬───────┘
                            │
                            │ HTTP
                            ▼
                       🌐 User Browser