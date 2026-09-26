# 🚀 AWS CI/CD Pipeline for Java Web Application Deployment

This project demonstrates an end-to-end Continuous Integration and
Continuous Deployment (CI/CD) pipeline for a Java web application
using AWS cloud services and DevOps tools.

The project extends the previous Jenkins, Maven, Docker, Amazon ECR
and Tomcat deployment workflow by introducing:

- Amazon EC2 Auto Scaling
- Application Load Balancer
- Target Group
- Launch Template
- Rolling deployment using Auto Scaling Instance Refresh

The main purpose of this project is to demonstrate how a Java web
application can be automatically built, containerized, stored in a
private container registry and deployed across an Auto Scaling
application fleet.

The complete deployment flow is:

**Developer → GitHub → Jenkins → Maven → WAR → Docker → Amazon ECR → Auto Scaling → EC2 → Tomcat 10 → Target Group → ALB → User**

---

# 📄 Documentation File

The complete implementation report is available here:

### 📘 Level 6 Project Report

[Open Level_6_AWS_CI_CD_Java_Tomcat_Project_Documentation_Complete.pdf](https://github.com/Manimaran200413/AWS-DevOps-Projects/tree/5f05762a2e2c9ad71e880df98b6dbfcaaa93e1c1/Level-04-Jenkins-Maven-Tomcat-CICD/Documentation)

The PDF contains the complete project implementation,
architecture, configuration, testing, troubleshooting,
security considerations, and implementation evidence.

---


# 🚀 Architecture

```text
                         👨‍💻 Developer
                              │
                              │ git push
                              ▼
                       ┌──────────────┐
                       │    GitHub    │
                       │ Repository   │
                       └──────┬───────┘
                              │
                           Webhook
                              │
                              ▼
                       ┌──────────────┐
                       │   Jenkins    │
                       │     EC2      │
                       └──────┬───────┘
                              │
                              ▼
                         Apache Maven
                              │
                              ▼
                           WAR File
                              │
                              ▼
                         Docker Build
                              │
                              ▼
                       Docker Image
                              │
                              ▼
                       ┌──────────────┐
                       │  Amazon ECR   │
                       │ Docker Image  │
                       └──────┬───────┘
                              │
                              ▼
                    Auto Scaling Instance
                          Refresh
                              │
                              ▼
                ┌─────────────────────────┐
                │       EC2 Fleet         │
                │                         │
                │  Docker + Tomcat 10    │
                │  Java Web Application  │
                └────────────┬────────────┘
                             │
                             ▼
                       Target Group
                             │
                             ▼
                  Application Load Balancer
                         Port 80
                             │
                             ▼
                           👤 User