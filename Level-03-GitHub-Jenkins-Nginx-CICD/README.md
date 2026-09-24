# 🚀 Level 3 - GitHub + Jenkins + Nginx CI/CD

![GitHub](https://img.shields.io/badge/GitHub-Source%20Control-black?logo=github)
![Jenkins](https://img.shields.io/badge/Jenkins-CI%2FCD-red?logo=jenkins)
![AWS](https://img.shields.io/badge/AWS-EC2-orange?logo=amazon-aws)
![Nginx](https://img.shields.io/badge/Nginx-Web%20Server-green?logo=nginx)
![Linux](https://img.shields.io/badge/Linux-Amazon%20Linux-orange?logo=linux)
![HTML5](https://img.shields.io/badge/HTML5-Website-orange?logo=html5)
![CSS3](https://img.shields.io/badge/CSS3-Styling-blue?logo=css3)
![JavaScript](https://img.shields.io/badge/JavaScript-Frontend-yellow?logo=javascript)

## 📌 Project Overview

This Level 3 project demonstrates a Continuous Integration and
Continuous Deployment (CI/CD) workflow for a static portfolio
website using GitHub, Jenkins, and Nginx on AWS EC2.

The website source code is maintained in GitHub.

When a source-code change is pushed to GitHub, the configured
GitHub webhook notifies Jenkins.

Jenkins then:

1. Checks out the latest source code.
2. Performs basic website validation.
3. Deploys the website to a separate Nginx EC2 server using
   SSH/SCP.

Nginx then serves the deployed HTML, CSS, and JavaScript website
to users.

---

## 🎯 Objectives

The main objectives of this project are:

- Maintain the portfolio website source code in GitHub.
- Use Jenkins as the CI/CD automation server.
- Trigger Jenkins from GitHub push events.
- Automatically check out the latest source code.
- Perform basic website validation before deployment.
- Transfer website files from Jenkins to the Nginx EC2 server.
- Serve the website using Nginx.
- Verify Jenkins pipeline stages and console output.
- Validate the deployed website through a browser.

---

## 🏗️ System Architecture

```text
                    👨‍💻 Developer
                         │
                         │ git push
                         ▼
                  ┌──────────────┐
                  │    GitHub    │
                  │              │
                  │ Source Code  │
                  │ Jenkinsfile  │
                  └──────┬───────┘
                         │
                         │ Webhook
                         ▼
                  ┌──────────────┐
                  │   Jenkins    │
                  │   EC2 Server │
                  │              │
                  │ Checkout     │
                  │ Test         │
                  │ Deploy       │
                  └──────┬───────┘
                         │
                       SSH/SCP
                         │
                         ▼
                  ┌──────────────┐
                  │  Web EC2     │
                  │              │
                  │ Amazon Linux │
                  │    Nginx     │
                  └──────┬───────┘
                         │
                         │ HTTP
                         ▼
                    🌐 User Browser