# 📚 Level 1 - Project Documentation

## 📌 Overview

This folder contains the complete implementation documentation
for **Level 1 - Static Website Deployment on AWS S3 and Amazon
CloudFront**.

The project demonstrates the deployment of a static portfolio
website using Amazon S3 as the storage origin and Amazon
CloudFront as the content delivery layer.

The implementation also includes Origin Access Control (OAC),
S3 bucket policy configuration, AWS CLI operations, HTTPS
validation, content updates, and final deployment testing.

---

## 📄 Complete Project Report

The complete implementation report is available here:

### 📘 Level 1 Documentation

[Open Level-01-AWS-S3-CloudFront-Project-Report.pdf](https://github.com/Manimaran200413/AWS-DevOps-Projects/blob/9f186da5c8e50668826cc2ca541d8766a139a46f/Level-01-AWS-S3-CloudFront/Documentation/Level_1_AWS_S3_CloudFront_Static_Website_Project_Report.pdf)

The PDF contains the complete project implementation,
configuration details, screenshots, architecture, testing
results, troubleshooting information, and final validation.

---

## 🎯 Project Objectives

The documentation covers the following objectives:

- Create an Amazon S3 bucket for static website hosting.
- Upload static website files to Amazon S3.
- Configure Amazon CloudFront with S3 as the origin.
- Configure Origin Access Control (OAC).
- Configure the required S3 bucket policy.
- Deliver the website through CloudFront.
- Validate HTTPS-based website delivery.
- Install and configure AWS CLI.
- Use AWS CLI to inspect S3 resources.
- Update website content using AWS CLI.
- Verify updated S3 objects.
- Validate the final website through CloudFront.

---

## 🏗️ System Architecture

The documented architecture follows:

```text
                    👨‍💻 User / Developer
                           │
                           ▼
                    Website Source Code
                    HTML / CSS / JS
                           │
                           │ Upload
                           ▼
                  ┌──────────────────┐
                  │    Amazon S3     │
                  │                  │
                  │  Static Website  │
                  │      Files       │
                  └────────┬─────────┘
                           │
                           │ S3 Origin
                           ▼
                  ┌──────────────────┐
                  │ Amazon CloudFront │
                  │                  │
                  │   CDN + HTTPS    │
                  │                  │
                  │      OAC         │
                  └────────┬─────────┘
                           │
                           │ HTTPS
                           ▼
                     🌐 User Browser
                           │
                           ▼
                     Public Website