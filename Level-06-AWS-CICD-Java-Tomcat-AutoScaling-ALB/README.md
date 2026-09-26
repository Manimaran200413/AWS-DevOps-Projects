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