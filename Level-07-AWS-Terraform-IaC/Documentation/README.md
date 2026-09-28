## 📌 Project Title

AWS Infrastructure as Code with Terraform for Java Web Application Deployment

---

# 🎯 Project Purpose

The purpose of this project is to demonstrate how Terraform can be
used to define, provision and manage AWS infrastructure as code.

Instead of manually creating AWS resources, the infrastructure is
defined through Terraform configuration files.

The project provisions:

VPC
Public subnets
Private subnets
Internet Gateway
NAT Gateway
Route tables
Security Groups
IAM role
IAM policy
EC2 instance profile
Amazon ECR
EC2 Launch Template
Application Load Balancer
Target Group
Auto Scaling Group

The Java web application is containerized using Docker/Tomcat and is
served through the Application Load Balancer.

---

# 🏗️ System Architecture

The documented architecture follows:

Developer
    ↓
GitHub / Terraform Project
    ↓
Terraform
    ↓
AWS VPC
    ↓
Application Load Balancer :80
    ↓
Target Group
    ↓
EC2 :8080
    ↓
Docker / Tomcat
    ↓
Java Web Application

The Level 7 report presents this architecture on the system
architecture page and identifies the same complete flow.

---

# 🔄 Complete Infrastructure Workflow
1. Terraform Project
        ↓
2. terraform init
        ↓
3. terraform validate
        ↓
4. terraform plan
        ↓
5. VPC and Routing
        ↓
6. Security Groups
        ↓
7. IAM
        ↓
8. Amazon ECR / Docker
        ↓
9. Launch Template
        ↓
10. Application Load Balancer
        ↓
11. Target Group
        ↓
12. Auto Scaling Group
        ↓
13. Application Validation
        ↓
14. terraform destroy

The project report defines this as the complete infrastructure
workflow.

---

# 🛠️ Technologies and AWS Services
Infrastructure
Terraform
AWS VPC
Public Subnets
Private Subnets
Internet Gateway
NAT Gateway
Route Tables
Security
IAM
Security Groups
EC2 Instance Profile
Containerization
Docker
Apache Tomcat
Application
Java
Apache Maven
SampleApp
AWS Compute and Deployment
Amazon EC2
EC2 Launch Template
Auto Scaling Group
Load Balancing
Application Load Balancer
Target Group
Container Registry
Amazon ECR

---

# 📁 Terraform Project Structure

The documentation covers the following Terraform project files:

Terraform/
│
├── provider.tf
├── variables.tf
├── terraform.tfvars
├── vpc.tf
├── security-groups.tf
├── iam.tf
├── ecr.tf
├── ec2.tf
├── alb.tf
├── autoscaling.tf
├── outputs.tf
├── Dockerfile
│
└── SampleApp/
    ├── pom.xml
    ├── src/
    └── target/

---

# Terraform File Responsibilities
File - Responsibility
provider.tf - AWS provider configuration
variables.tf - Reusable variables
terraform.tfvars - Environment values
vpc.tf - VPC and network infrastructure
security-groups.tf - ALB and EC2 security
iam.tf - IAM role, policy and instance profile
ecr.tf - Amazon ECR repository
ec2.tf - Launch Template and user data
alb.tf - ALB, Target Group and Listener
autoscaling.tf - Auto Scaling Group
outputs.tf - Important resource outputs
Dockerfile - Java/Tomcat Docker image
SampleApp/ - Java web application

This file structure is explicitly listed in the Level 7 documentation.

---

# 📋 Documentation Contents

The complete report contains the following major sections:

1. Project Overview
2. Problem Statement
3. Objectives
4. Technologies and AWS Services
5. Prerequisites
6. System Architecture
7. Complete Infrastructure Workflow
8. Project Components and Terraform Structure
9. Complete Implementation Procedure
10. Terraform Configuration Overview
11. AWS Infrastructure Layers
12. Docker, Tomcat and Amazon ECR Integration
13. Application Request Flow
14. Validation and Verification Checklist
15. Troubleshooting and Operational Notes
16. Security Notes
17. Key Lessons Learned
18. Interview / Viva Explanation
19. Appendix – Complete Project Flow

The table of contents of the supplied Level 7 report follows this
organization.

---

# 📸 Implementation Evidence

The Level 7 documentation contains:

90 implementation screenshots + 1 system architecture diagram.

The screenshots document the project chronologically from the initial
Terraform/AWS CLI setup through infrastructure creation and final
cleanup.

---

# 📝 Implementation Phases

The implementation is organized into multiple phases.

# Phase 1 – Terraform Setup and Configuration

The documentation starts with:

Terraform verification
AWS CLI verification
AWS identity verification
provider.tf
AWS provider configuration
Variables
terraform.tfvars
terraform init
terraform validate
terraform plan

The first implementation phase is documented beginning with Terraform
and AWS CLI verification and provider configuration.

# 🌐 Phase 2 – VPC, Subnets, Routing and Apply

This phase covers:

VPC
Public Subnet A
Public Subnet B
Private Subnet A
Private Subnet B
Internet Gateway
Public Route Table
Private Route Table
Route associations
Terraform outputs
Terraform plan
Terraform apply

The documented implementation includes separate public and private
subnets and routing resources.

# ☁️ Phase 3 – AWS Network Verification

The AWS infrastructure created by Terraform is verified through the
AWS console.

The documentation includes verification of:

VPC
Public subnets
Private subnets
Route tables
Internet Gateway
NAT Elastic IP
NAT Gateway

The report documents these AWS-side verification steps after
Terraform provisioning.

# 🔐 Phase 4 – Security Groups

This phase documents:

ALB security group
HTTP access to ALB
ALB egress
EC2 application security group
Port 8080 restriction
Complete EC2 security rules
Security-group configuration review
Terraform application
AWS security-group verification

The intended architecture separates the ALB and EC2 application
security controls.

# 👤 Phase 5 – IAM Role, Policy and Instance Profile

This phase covers:

EC2 IAM role
ECR pull policy
Policy attachment
EC2 instance profile
IAM resource application
IAM verification
IAM role verification
IAM policy verification

The purpose is to provide the required AWS permissions for the EC2
application environment.

# 🐳 Phase 6 – Amazon ECR and Docker/Tomcat

This phase documents:

ECR repository
ECR repository settings
ECR repository reference
Terraform ECR configuration
ECR Terraform state
Docker image build
Docker image push
Containerized application testing
Local Docker image verification
Docker/ECR transfer
Image push completion
Amazon ECR image verification

The project uses Amazon ECR as the private Docker image registry.


# 💻 Phase 7 – EC2 Launch Template and User Data

This phase documents:

EC2 Launch Template
Launch Template networking
Application image URI
EC2 user data
ECR authentication
Docker startup
Tomcat startup
Complete Launch Template configuration
Launch Template verification in AWS

The Launch Template automates EC2 initialization and application
startup.

# ⚖️ Phase 8 – Application Load Balancer and Target Group

This phase documents the creation and configuration of:

Application Load Balancer
ALB subnet mapping
Target Group
Listener
Application routing

The ALB provides the public HTTP entry point and forwards traffic to
the application targets on port 8080.

---

# 🚀 Auto Scaling

The infrastructure includes an Auto Scaling Group to manage the
application instances.

The Auto Scaling Group works together with:

Launch Template
       ↓
EC2 Instances
       ↓
Target Group
       ↓
Application Load Balancer

---

# 🌐 Application Request Flow

The documented runtime flow is:

User
 ↓
Application Load Balancer :80
 ↓
Target Group
 ↓
EC2 :8080
 ↓
Docker
 ↓
Tomcat
 ↓
Java Web Application

---

# 🧪 Validation

The project validates:

✓ Terraform initialization
✓ Terraform validation
✓ Terraform planning
✓ Terraform apply
✓ VPC
✓ Subnets
✓ Route tables
✓ Internet Gateway
✓ NAT Gateway
✓ Security Groups
✓ IAM
✓ ECR
✓ Docker image
✓ Launch Template
✓ Application Load Balancer
✓ Target Group
✓ Auto Scaling Group
✓ Application availability
✓ Terraform cleanup
🧹 Terraform Cleanup

The documentation also demonstrates the Terraform lifecycle cleanup
using:

terraform destroy

This demonstrates that the same Infrastructure as Code used to
provision the environment can also be used to remove the managed
resources.

---

# 🔐 Security Notes

Do not commit the following to GitHub:

AWS Access Keys
AWS Secret Keys
Passwords
Private Keys
.pem files
.ppk files
Sensitive terraform.tfvars
AWS credentials

Use IAM roles and instance profiles wherever possible.

---

# 💡 Key Learning Outcomes

This project demonstrates practical knowledge of:

Infrastructure as Code
Terraform providers
Terraform variables
Terraform resources
Terraform outputs
Terraform dependency management
AWS VPC
Public/private networking
Route tables
NAT Gateway
Security Groups
IAM
Amazon ECR
Docker
Tomcat
EC2 Launch Templates
Application Load Balancer
Target Groups
Auto Scaling
Terraform lifecycle management

---

# 🎤 Interview / Viva Topics

This documentation can be used to prepare for questions such as:

What is Infrastructure as Code?

Infrastructure as Code is the practice of defining and managing
infrastructure using machine-readable configuration instead of
manually creating resources.

Why Terraform?

Terraform allows infrastructure to be defined declaratively and
provides a repeatable provisioning and lifecycle workflow.

What is the purpose of terraform plan?

It previews the infrastructure changes Terraform intends to make
before applying them.

What is the purpose of terraform apply?

It provisions or updates the infrastructure according to the
Terraform configuration.

What is the purpose of terraform destroy?

It removes the infrastructure managed by the Terraform configuration.

Why use a Launch Template?

The Launch Template provides a repeatable configuration for EC2
instances and their startup process.

Why use an ALB?

The Application Load Balancer provides a public entry point and
forwards traffic to healthy application targets.

---

# 📚 Documentation Usage

This documentation can be used for:

GitHub portfolio
AWS DevOps portfolio
LinkedIn project showcase
Resume project reference
College project documentation
Technical interview preparation
Viva preparation
Terraform learning
AWS infrastructure reference

---
# 📁 Documentation Folder
Documentation/
│
├── README.md
│
└── Level_7_AWS_Infrastructure_as_Code_with_Terraform_COMPLETE_PROJECT_DOCUMENTATION.pdf

---

# 👨‍💻 Author

Manimaran

AWS DevOps | Cloud | Terraform | Docker | AWS

Project: Level 7 – AWS Infrastructure as Code with Terraform

AWS Region: Asia Pacific (Mumbai) – ap-south-1