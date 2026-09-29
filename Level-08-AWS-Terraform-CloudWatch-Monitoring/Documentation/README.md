# 📌 Project Title

**AWS Infrastructure as Code with Terraform and CloudWatch Monitoring**

---

# 🎯 Project Purpose

The purpose of this project is to provision an AWS application
environment using Terraform and add monitoring and alerting using
Amazon CloudWatch and Amazon SNS.

The application is deployed as a Docker/Tomcat container on private
EC2 instances managed by an Auto Scaling Group.

The application image is stored in Amazon ECR.

An Application Load Balancer provides the public HTTP entry point.

CloudWatch monitors the infrastructure and application environment,
while SNS delivers alarm notifications through email.

---

# 🏗️ System Architecture

```text

Developer
    ↓
GitHub
    ↓
Terraform
    ↓
AWS VPC
    ↓
ALB :80
    ↓
Target Group
    ↓
Private EC2 :8080
    ↓
Docker
    ↓
Tomcat
    ↓
Java SampleApp

EC2
 ↓
CloudWatch Agent
 ↓
CloudWatch Metrics / Logs
 ↓
CloudWatch Alarms
 ↓
SNS
 ↓
Email

```

---

# 🔄 Project Workflow

```text

Terraform Project
       ↓
terraform init
       ↓
terraform validate
       ↓
terraform plan
       ↓
terraform apply
       ↓
VPC / Networking
       ↓
Security
       ↓
IAM
       ↓
ECR
       ↓
Launch Template
       ↓
Auto Scaling
       ↓
ALB / Target Group
       ↓
Application
       ↓
CloudWatch Agent
       ↓
CloudWatch
       ↓
Alarms
       ↓
SNS
       ↓
Email Notification
       ↓
Dashboard
       ↓
Validation
       ↓
terraform destroy

```
---

# 📁 Terraform Project Components

```text
Terraform/
│
├── provider.tf
├── variables.tf
├── terraform.tfvars.example
│
├── vpc.tf
├── security_groups.tf
├── iam.tf
├── ecr.tf
│
├── launch_template.tf
├── asg.tf
├── alb.tf
│
├── cloudwatch.tf
├── alarms.tf
├── dashboard.tf
├── sns.tf
│
├── user-data.sh
├── outputs.tf
│
├── Dockerfile
│
└── SampleApp/
    ├── pom.xml
    └── src/

```
---

# 📋 Documentation Contents

The Level 8 documentation contains:

Project Overview
Problem Statement
Objectives
Technologies and AWS Services
Prerequisites
System Architecture
Complete Terraform and Monitoring Workflow
Project Components
Terraform Project Structure
Key Configuration
Complete Implementation Procedure
Monitoring and Alerting Design
Application Request and Monitoring Flows
Verification Checklist
Troubleshooting / Important Observations
Security Notes
Key Lessons Learned
Interview / Viva Explanation
Conclusion
Appendix – Complete Infrastructure Flow

The supplied report organizes its contents in this structure.

---

# 🛠️ Technologies and AWS Services

Infrastructure
Terraform
Amazon VPC
Public Subnets
Private Subnets
Internet Gateway
NAT Gateway
Route Tables
Compute
Amazon EC2
Launch Template
Auto Scaling Group
Load Balancing
Application Load Balancer
Target Group
Containerization
Docker
Apache Tomcat
Java
Maven
Container Registry
Amazon ECR
Security
IAM
Security Groups
Instance Profile
Monitoring
Amazon CloudWatch
CloudWatch Agent
CloudWatch Logs
CloudWatch Alarms
CloudWatch Dashboard
Notifications
Amazon SNS
Email Subscription

---

# 📊 Monitoring and Alerting

The monitoring layer includes:

```text

EC2 CPU Utilization
        │
EC2 Status Checks
        │
ALB 5XX Responses
        │
Unhealthy Targets
        │
ALB Response Time
        │
        ▼
CloudWatch Alarms
        │
        ▼
       SNS
        │
        ▼
 Email Notification

 ```

CloudWatch also collects additional EC2 system metrics and logs using
the CloudWatch Agent.

---

# 📈 CloudWatch Dashboard

The project dashboard provides operational visibility into:

EC2 CPU utilization
ALB request count
Target response time
Unhealthy targets

Dashboard:

level8-tf-aws-moni-dashboard

---

# 🚨 CloudWatch Alarm Configuration

The documented CPU alarm uses:

Threshold:       70%
Period:          60 seconds
Evaluation:      2 of 2 datapoints

Other documented monitoring conditions include:

EC2 Status Check
ALB 5XX
Target Unhealthy
ALB Response Time

---

# 📧 SNS Notification

SNS topic:

level8-tf-aws-moni-alerts

Workflow:
```text

CloudWatch Alarm
       ↓
SNS Topic
       ↓
Email Subscription
       ↓
Email Notification

```

The SNS subscription must be confirmed before relying on alarm
notifications.

---

# 🧪 Verification

The project verifies:

✓ Terraform
✓ VPC
✓ Public Subnets
✓ Private Subnets
✓ Route Tables
✓ Internet Gateway
✓ NAT Gateway
✓ Security Groups
✓ IAM
✓ ECR
✓ Docker Image
✓ Launch Template
✓ Auto Scaling Group
✓ EC2 Instances
✓ Application Load Balancer
✓ Target Group
✓ Application
✓ CloudWatch Agent
✓ CloudWatch Logs
✓ CloudWatch Alarms
✓ CloudWatch Dashboard
✓ SNS Topic
✓ SNS Email Subscription
✓ Alarm Notification
✓ Terraform Cleanup

---

# 📸 Implementation Evidence

The supplied Level 8 report documents 66 implementation steps in
chronological order, with an implementation action and expected result
for each screenshot.

The documentation covers the implementation from Terraform provider
and networking configuration through CloudWatch Agent, alarms,
dashboard, SNS and application/monitoring validation.

---

# 🔐 Security Notes

The project documentation recommends:

Do not store AWS access keys in Terraform source.
Do not store passwords or private keys in GitHub.
Use IAM roles/instance profiles.
Keep application EC2 instances in private subnets.
Allow public HTTP traffic at the ALB.
Allow application port 8080 through the ALB-to-EC2 security-group
path.
Use only the required IAM permissions.

---

# 🧹 Cleanup

After completing the project validation:

**terraform destroy**

This removes the Terraform-managed test environment.

---

# 🎓 Key Learning Outcomes

This project demonstrates practical experience with:

Terraform Infrastructure as Code
AWS VPC
Public/private subnet architecture
NAT Gateway
IAM
Amazon ECR
Docker
Tomcat
EC2
Launch Templates
Auto Scaling
Application Load Balancer
CloudWatch Agent
CloudWatch Logs
CloudWatch Alarms
CloudWatch Dashboard
Amazon SNS
Email alerting
Terraform lifecycle management

---

# 👨‍💻 Author

Manimaran

AWS DevOps | AWS Cloud | Terraform | Docker | Kubernetes

Level 8 Project

AWS Infrastructure as Code with Terraform and CloudWatch Monitoring

AWS Region: ap-south-1