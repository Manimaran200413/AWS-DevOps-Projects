# 🚀 Level 2 - Static Website Hosting on AWS EC2 with Nginx

![AWS](https://img.shields.io/badge/AWS-EC2-orange?logo=amazon-aws)
![Amazon Linux](https://img.shields.io/badge/Amazon%20Linux-2023-orange?logo=amazon-aws)
![Nginx](https://img.shields.io/badge/Nginx-Web%20Server-green?logo=nginx)
![WinSCP](https://img.shields.io/badge/WinSCP-SFTP-blue)
![HTML5](https://img.shields.io/badge/HTML5-Website-orange?logo=html5)
![CSS3](https://img.shields.io/badge/CSS3-Styling-blue?logo=css3)
![JavaScript](https://img.shields.io/badge/JavaScript-Frontend-yellow?logo=javascript)

## 📌 Project Overview

This project demonstrates the manual deployment of a static
HTML/CSS/JavaScript website on an Amazon EC2 instance running
Amazon Linux 2023, using Nginx as the web server.

An EC2 instance was launched in the AWS Mumbai region
(`ap-south-1`), configured with Nginx, and used to host a
static website.

The website files were transferred from the local machine to
the Nginx web root using WinSCP over SFTP.

The final website was validated through a web browser using
the public IP address of the EC2 instance.

---

## 🎯 Objectives

- Launch and verify an Amazon EC2 instance.
- Use Amazon Linux 2023 as the server operating system.
- Connect to EC2 using EC2 Instance Connect.
- Update the Linux system packages.
- Install and configure Nginx.
- Start and verify the Nginx service.
- Enable Nginx to start automatically after reboot.
- Validate the default Nginx welcome page.
- Transfer static website files using WinSCP/SFTP.
- Deploy HTML, CSS, JavaScript, images, and other assets.
- Configure the Nginx web root.
- Troubleshoot file permission issues.
- Validate the final website through a browser.
- Understand how Nginx service availability affects website access.

---

## 🏗️ System Architecture

```text
                    👤 User Browser
                         │
                         │ HTTP
                         ▼
                ┌──────────────────┐
                │ AWS Internet     │
                │ Gateway          │
                └────────┬─────────┘
                         │
                         ▼
                ┌──────────────────┐
                │   Amazon EC2     │
                │                  │
                │ Amazon Linux 2023│
                │                  │
                │      Nginx       │
                └────────┬─────────┘
                         │
                         ▼
                ┌──────────────────┐
                │ Website Files    │
                │ HTML / CSS / JS  │
                │ Images / Fonts   │
                └──────────────────┘