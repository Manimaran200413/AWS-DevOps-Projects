# 🚀 Level 1 - Static Website Deployment on AWS S3 & CloudFront

![AWS](https://img.shields.io/badge/AWS-Cloud-orange?logo=amazon-aws)
![Amazon S3](https://img.shields.io/badge/Amazon%20S3-Storage-red?logo=amazon-s3)
![CloudFront](https://img.shields.io/badge/Amazon%20CloudFront-CDN-orange?logo=amazon-aws)
![AWS CLI](https://img.shields.io/badge/AWS%20CLI-CLI-yellow?logo=amazon-aws)
![HTML](https://img.shields.io/badge/HTML-Website-orange?logo=html5)
![CSS](https://img.shields.io/badge/CSS-Styling-blue?logo=css3)
![JavaScript](https://img.shields.io/badge/JavaScript-Frontend-yellow?logo=javascript)
![GitHub](https://img.shields.io/badge/GitHub-Version%20Control-black?logo=github)

## 📌 Project Overview

This project demonstrates the deployment of a static portfolio website using **Amazon S3** and **Amazon CloudFront**.

The website is built using **HTML, CSS, and JavaScript**. The static website files are stored in an Amazon S3 bucket and delivered to users through an Amazon CloudFront distribution.

**Origin Access Control (OAC)** is configured to control access between CloudFront and the S3 origin. The required S3 bucket policy allows CloudFront to retrieve the website content.

AWS CLI is also used to inspect the S3 environment and perform website-file update operations.

The implementation was completed in the **Asia Pacific (Mumbai) region (`ap-south-1`)**.

---

## 🎯 Objectives

The main objectives of this project are:

- Create an Amazon S3 bucket for static website content.
- Upload HTML, CSS, and JavaScript files to S3.
- Configure Amazon CloudFront with S3 as the origin.
- Configure Origin Access Control (OAC).
- Configure the required S3 bucket policy.
- Deliver the website through the CloudFront distribution.
- Validate HTTPS-based website delivery.
- Install and configure AWS CLI.
- Use AWS CLI to inspect and update S3 content.
- Understand CloudFront caching and content invalidation.
- Maintain the project source code and documentation using GitHub.

---

## 🏗️ System Architecture

The deployment follows this architecture:

```text
                  👨‍💻 User / Developer
                         │
                         │
                         ▼
                  💻 Source Code
              HTML / CSS / JavaScript
                         │
                         │ Upload
                         ▼
                ┌─────────────────┐
                │   Amazon S3     │
                │                 │
                │ mpg-portfolio   │
                │                 │
                │ HTML/CSS/JS     │
                └────────┬────────┘
                         │
                         │ S3 Origin
                         │
                         ▼
                ┌─────────────────┐
                │ Amazon CloudFront│
                │                 │
                │ CDN + HTTPS     │
                │                 │
                │      OAC        │
                └────────┬────────┘
                         │
                         │ HTTPS
                         ▼
                  🌐 User Browser
                         │
                         ▼
                  Public Website