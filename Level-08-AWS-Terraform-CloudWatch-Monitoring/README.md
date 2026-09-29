# 🚀 Level 8 – AWS Terraform Infrastructure with CloudWatch Monitoring

## 📌 Project Title

**AWS Infrastructure as Code with Terraform and CloudWatch Monitoring**

---

## 📖 Project Overview

Level 8 extends the previous Terraform-based AWS infrastructure by
adding a complete monitoring and alerting layer using Amazon
CloudWatch and Amazon SNS.

The project provisions AWS infrastructure using Terraform and deploys
a containerized Java/Tomcat web application on Amazon EC2.

The application is stored as a Docker image in Amazon ECR and pulled
by EC2 instances using an IAM instance role.

The application runs behind an Application Load Balancer and an Auto
Scaling Group.

Amazon CloudWatch is used for metrics, logs, alarms and dashboards.

Amazon SNS is used to send CloudWatch alarm notifications to an
email subscription.

---

# 🎯 Objectives

The main objectives of this project are:

- Implement AWS Infrastructure as Code using Terraform.
- Create a custom AWS VPC.
- Create public and private subnets across Availability Zones.
- Configure Internet Gateway and NAT Gateway.
- Configure public and private route tables.
- Create ALB and EC2 security groups.
- Create IAM role and instance profile.
- Create an Amazon ECR repository.
- Build and deploy the Java/Tomcat Docker application.
- Create an EC2 Launch Template.
- Create an Auto Scaling Group.
- Create an Application Load Balancer.
- Configure a Target Group.
- Install and configure CloudWatch Agent.
- Collect EC2 system metrics.
- Collect EC2 logs in CloudWatch Logs.
- Create CloudWatch alarms.
- Create a CloudWatch dashboard.
- Create an SNS notification topic.
- Configure email notifications.
- Validate application availability through the ALB.
- Validate monitoring and alerting.
- Demonstrate Terraform infrastructure cleanup.

---

# 🏗️ Architecture

```text
Developer
    │
    ▼
GitHub / Terraform Project
    │
    ▼
Terraform
    │
    ▼
AWS VPC
    │
    ├── Public Subnets
    │      │
    │      └── Application Load Balancer :80
    │
    └── Private Subnets
           │
           └── Auto Scaling Group
                  │
                  ├── EC2 Instance
                  │     └── Docker
                  │          └── Tomcat :8080
                  │               └── Java SampleApp
                  │
                  └── EC2 Instance
                        └── Docker
                             └── Tomcat :8080

Amazon ECR
    │
    └── Docker Application Image

EC2
 │
 └── CloudWatch Agent
       │
       ├── Metrics
       └── Logs
             │
             ▼
        CloudWatch
        ├── Alarms
        └── Dashboard
              │
              ▼
             SNS
              │
              ▼
       Email Notification

```

---

# 🔄 Complete Project Workflow

```text 

Developer
    ↓
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
VPC + Subnets + Routing
    ↓
Security Groups
    ↓
IAM
    ↓
Amazon ECR
    ↓
Docker Image
    ↓
Launch Template
    ↓
Auto Scaling Group
    ↓
Application Load Balancer
    ↓
Target Group
    ↓
Java/Tomcat Application
    ↓
CloudWatch Agent
    ↓
CloudWatch Metrics + Logs
    ↓
CloudWatch Alarms
    ↓
SNS
    ↓
Email Notification
    ↓
CloudWatch Dashboard
    ↓
Application + Monitoring Validation
    ↓
terraform destroy

```

---

# 🛠️ Technologies and AWS Services

Infrastructure as Code
Terraform
AWS Networking
Amazon VPC
Public Subnets
Private Subnets
Internet Gateway
NAT Gateway
Route Tables
Compute
Amazon EC2
EC2 Launch Template
Auto Scaling Group
Load Balancing
Application Load Balancer
Target Group
Container Registry
Amazon ECR
Security
AWS IAM
Security Groups
IAM Instance Profile
Monitoring
Amazon CloudWatch
CloudWatch Agent
CloudWatch Logs
CloudWatch Alarms
CloudWatch Dashboard
Notifications
Amazon SNS
Email Subscription
Application
Java
Apache Maven
Docker
Apache Tomcat
Source Control
Git
GitHub

---

# 📁 Repository Structure

```text

Level-08-AWS-Terraform-CloudWatch-Monitoring/
│
├── README.md
├── .gitignore
│
├── Terraform/
│   │
│   ├── provider.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   │
│   ├── vpc.tf
│   ├── security_groups.tf
│   │
│   ├── iam.tf
│   ├── ecr.tf
│   │
│   ├── launch_template.tf
│   ├── asg.tf
│   ├── alb.tf
│   │
│   ├── cloudwatch.tf
│   ├── alarms.tf
│   ├── dashboard.tf
│   ├── sns.tf
│   │
│   ├── user-data.sh
│   ├── outputs.tf
│   │
│   ├── Dockerfile
│   │
│   └── SampleApp/
│       ├── pom.xml
│       ├── src/
│       └── target/
│
└── Documentation/
    ├── README.md
    └── Level_8_AWS_Terraform_CloudWatch_Monitoring.pdf

```

---

# 📄 Terraform File Responsibilities

**provider.tf**

Defines Terraform and AWS provider configuration.

**variables.tf**

Defines reusable variables for:

Project name
Environment
AWS region
VPC CIDR
Subnet CIDRs
Instance type
Docker image tag
Application port
Monitoring values
terraform.tfvars.example

Contains example values for the Terraform variables.

The actual terraform.tfvars should not be committed if it contains
environment-specific or sensitive information.

**vpc.tf**

Creates:

VPC
Public subnets
Private subnets
Internet Gateway
NAT Gateway
Elastic IP
Route tables
Route associations
security_groups.tf

Creates:

ALB Security Group

Controls inbound traffic to the Application Load Balancer.

EC2 Security Group

Controls application traffic to the private EC2 instances.

The application port is 8080 and should be reachable from the ALB
security group rather than directly from the Internet.

**iam.tf**

Creates:

EC2 IAM role
IAM policy
ECR permissions
Instance profile

The EC2 instances use the IAM role to access required AWS services.

**ecr.tf**

Creates the Amazon ECR repository used to store the Dockerized
Java/Tomcat application.

launch_template.tf

Defines:

Amazon Linux 2023 AMI
EC2 instance type
Security group
IAM instance profile
Monitoring configuration
Storage
User data
Application bootstrap

**asg.tf**

Creates the Auto Scaling Group.

Configured capacity:

Minimum:  2
Desired:  2
Maximum:  4

**alb.tf**

Creates:

Application Load Balancer
Target Group
Listener

Traffic flow:

```text

ALB :80
   ↓
Target Group
   ↓
EC2 :8080

```

---

# 📊 CloudWatch Monitoring

**cloudwatch.tf**

Configures:

CloudWatch Log Group
CloudWatch monitoring resources
CloudWatch Agent-related configuration

The CloudWatch Agent collects additional EC2 system metrics and logs.

---

# 🚨 CloudWatch Alarms
**alarms.tf**

Defines CloudWatch alarms for infrastructure/application health.

The project includes monitoring for:

EC2 CPU utilization
EC2 status checks
ALB 5XX responses
Unhealthy targets
ALB response time

The documented CPU alarm uses:

Threshold: 70%
Period: 60 seconds
Evaluation: 2 of 2 datapoints

---

# 📈 CloudWatch Dashboard

**dashboard.tf**

Creates the project CloudWatch dashboard.

Dashboard name:

level8-tf-aws-moni-dashboard

The dashboard provides operational visibility for:

EC2 CPU utilization
ALB request count
Target response time
Unhealthy targets

---

# 📧 SNS Notifications
**sns.tf**

Creates the SNS topic:

level8-tf-aws-moni-alerts

CloudWatch alarms publish state-change notifications to SNS.

SNS then delivers the notification to the confirmed email
subscription.

---

# 🚀 User Data
**user-data.sh**

The user-data script automates EC2 initialization.

It performs tasks such as:
```text

EC2 Startup
    ↓
Install Docker
    ↓
Install CloudWatch Agent
    ↓
Configure CloudWatch Agent
    ↓
Authenticate to ECR
    ↓
Pull Docker Image
    ↓
Start Application Container
    ↓
Tomcat :8080

```

This allows newly launched Auto Scaling instances to automatically
prepare the application and monitoring environment.

---

# 🐳 Docker Application

The Java application is containerized using Docker and Tomcat.
```text

SampleApp
    ↓
Maven
    ↓
Application Build
    ↓
Docker
    ↓
Tomcat
    ↓
Docker Image
    ↓
Amazon ECR

```
---

# 📦 SampleApp Structure
```text
SampleApp/
│
├── pom.xml
│
└──── src/
    ├── main/
    └── test/

 ```

pom.xml defines the Maven project.

src/ contains the Java web application source.

target/ contains Maven-generated build artifacts.

---

# ⚙️ Terraform Commands

1.Navigate to the Terraform directory:

**cd Terraform**

2.Initialize Terraform:

**terraform init**

3.Format Terraform files:

**terraform fmt**

4.Validate the configuration:

**terraform validate**

5.Review the execution plan:

**terraform plan**

6.Provision the infrastructure:

**terraform apply**

7.View Terraform outputs:

**terraform output**

8.Destroy the infrastructure after testing:

**terraform destroy**

---

# 🔍 Application Request Flow

```text

User
 ↓
Application Load Balancer :80
 ↓
ALB Listener
 ↓
Target Group
 ↓
Healthy EC2 Instance :8080
 ↓
Docker Container
 ↓
Tomcat
 ↓
Java Web Application
 ↓

```
---

# 📊 Monitoring Flow

```text

EC2
 │
 ├── CPU / System Metrics
 │
 └── Application/System Logs
          │
          ▼
   CloudWatch Agent
          │
          ▼
      CloudWatch
       │       │
       │       └── Dashboard
       │
       └── Alarms
              │
              ▼
             SNS
              │
              ▼
       Email Notification

```

---

# 🧪 Validation Checklist

The following components should be verified:

 Terraform initialized successfully
 Terraform validation successful
 Terraform plan reviewed
 VPC created
 Public subnets created
 Private subnets created
 Internet Gateway available
 NAT Gateway available
 Route tables configured
 Security groups configured
 IAM role created
 ECR repository created
 Docker image pushed to ECR
 Launch Template created
 Auto Scaling Group created
 EC2 instances running
 Application Load Balancer active
 Target Group configured
 Targets healthy
 Java application accessible through ALB
 CloudWatch Agent running
 CloudWatch Log Group receiving logs
 CloudWatch alarms created
 CloudWatch dashboard available
 SNS topic created
 SNS email subscription confirmed
 Alarm notification received
 Terraform destroy completed

---

# 🔐 Security

Do not commit the following files or information:

AWS Access Keys
AWS Secret Keys
Passwords
Private Keys
.pem files
.ppk files
AWS credentials
Sensitive terraform.tfvars

Recommended security architecture:
```text

Internet
   ↓
ALB :80
   ↓
Private EC2 :8080

```

The application EC2 instances should remain in private subnets.

The EC2 security group should allow application traffic from the ALB
security group rather than directly from the Internet.

Use IAM roles/instance profiles instead of long-lived AWS credentials
where possible.

---

# 🧹 Cleanup

After completing testing:

**terraform destroy**

Verify that the Terraform-managed lab infrastructure has been removed.

---

# 📚 Documentation

Complete implementation documentation is available inside:

```text
Documentation/
```

See:

Level_8_AWS_Terraform_CloudWatch_Monitoring.pdf

The project documentation contains the complete implementation
procedure, architecture, Terraform structure, monitoring design,
verification and troubleshooting information.

---

# 🎓 Key Learning Outcomes

Through this project, I learned how to:

Implement AWS Infrastructure as Code using Terraform.
Create AWS VPC networking.
Configure public and private subnets.
Configure Internet Gateway and NAT Gateway.
Configure security groups.
Manage IAM permissions.
Use Amazon ECR as a private Docker registry.
Deploy Docker/Tomcat applications on EC2.
Configure Launch Templates.
Configure Auto Scaling Groups.
Configure Application Load Balancers.
Configure Target Groups.
Install and configure CloudWatch Agent.
Collect EC2 metrics and logs.
Create CloudWatch alarms.
Create CloudWatch dashboards.
Configure SNS email notifications.
Build an end-to-end AWS monitoring architecture.
Manage infrastructure using Terraform lifecycle commands.

---

# 🏆 Conclusion

This Level 8 project extends the Terraform-based AWS infrastructure
from Level 7 by introducing centralized monitoring, alerting and
operational visibility.

Terraform manages the AWS infrastructure, while CloudWatch provides
metrics, logs, alarms and dashboards. SNS provides email-based alarm
notifications.

The resulting architecture provides an automated and reproducible
AWS environment for a containerized Java/Tomcat application with
monitoring and alerting capabilities.

---

# 👨‍💻 Author

Manimaran

AWS DevOps | AWS Cloud | Terraform | Docker | Kubernetes

Project: Level 8 – AWS Infrastructure as Code with Terraform and
CloudWatch Monitoring

AWS Region: Asia Pacific (Mumbai) – ap-south-1