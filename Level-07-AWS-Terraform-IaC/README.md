# 🚀 Level 7 – AWS Infrastructure as Code with Terraform

## 📌 Project Title

**AWS Infrastructure as Code with Terraform for Java Web Application Deployment**

---

## 📖 Project Overview

This Level 7 project demonstrates Infrastructure as Code (IaC) using
Terraform to provision and manage a complete AWS application
environment.

Instead of manually creating AWS resources through the AWS Management
Console, the infrastructure is defined as Terraform configuration
files and provisioned using Terraform commands.

The project provisions the network, routing, security, IAM, Amazon ECR,
EC2 Launch Template, Application Load Balancer, Target Group and Auto
Scaling Group.

The Java web application is containerized using Docker and Tomcat and
the application image is stored in Amazon ECR.

EC2 instances are initialized through Launch Template user data and
the application is exposed through an Application Load Balancer.

---

# 🎯 Objectives

The main objectives of this project are:

- Implement AWS Infrastructure as Code using Terraform.
- Create a custom AWS VPC.
- Create public and private subnets.
- Configure Internet Gateway and NAT Gateway.
- Configure public and private route tables.
- Configure ALB and EC2 security groups.
- Create IAM role and instance profile.
- Configure Amazon ECR.
- Build and test the Java/Tomcat Docker application.
- Push the Docker image to Amazon ECR.
- Create an EC2 Launch Template.
- Automate Docker and Tomcat startup using user data.
- Create an Application Load Balancer.
- Create a Target Group.
- Create an Auto Scaling Group.
- Validate the deployed application through the ALB.
- Demonstrate Terraform infrastructure lifecycle management.
- Perform infrastructure cleanup using `terraform destroy`.

---

# 🏗️ System Architecture

```text
                         👨‍💻 Developer
                              │
                              ▼
                    ┌───────────────────┐
                    │ GitHub Repository │
                    │ Terraform Project │
                    └─────────┬─────────┘
                              │
                              ▼
                     ┌─────────────────┐
                     │    Terraform    │
                     │ Infrastructure  │
                     │      as Code    │
                     └────────┬────────┘
                              │
                              ▼
                     ┌─────────────────┐
                     │    AWS VPC      │
                     │                 │
                     │ Public Subnets  │
                     │ Private Subnets │
                     │ IGW / NAT       │
                     │ Route Tables    │
                     └────────┬────────┘
                              │
                 ┌────────────┴────────────┐
                 │                         │
                 ▼                         ▼
        ┌─────────────────┐       ┌─────────────────┐
        │ Application     │       │   Application   │
        │ Load Balancer   │       │   EC2 Fleet     │
        │      :80        │       │ Auto Scaling    │
        └────────┬────────┘       └────────┬────────┘
                 │                         │
                 ▼                         ▼
        ┌─────────────────┐       ┌─────────────────┐
        │  Target Group   │──────►│ Docker/Tomcat   │
        │      :8080      │       │ Java App        │
        └─────────────────┘       └────────┬────────┘
                                           │
                                           ▼
                                    ┌─────────────┐
                                    │ Amazon ECR  │
                                    │ Docker Image│
                                    └─────────────┘

---

# 🔄 Complete Infrastructure Workflow

Terraform Project
       ↓
terraform init
       ↓
terraform validate
       ↓
terraform plan
       ↓
VPC
       ↓
Subnets
       ↓
Internet Gateway
       ↓
NAT Gateway
       ↓
Route Tables
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
Application Load Balancer
       ↓
Target Group
       ↓
Auto Scaling Group
       ↓
Application Validation
       ↓
terraform destroy

---

# 🛠️ Technologies and AWS Services

Infrastructure as Code
Terraform
AWS Services
Amazon VPC
Public Subnets
Private Subnets
Internet Gateway
NAT Gateway
Route Tables
Security Groups
IAM
Amazon ECR
Amazon EC2
Launch Template
Application Load Balancer
Target Group
Auto Scaling Group
Application Technologies
Java
Apache Maven
Docker
Apache Tomcat
Development Tools
Git
GitHub
Visual Studio Code
AWS CLI

---

📁 Project Structure

```text

Level-07-AWS-Terraform-IaC/
│
├── README.md
├── .gitignore
│
├── Terraform/
│   │
│   ├── provider.tf
│   ├── variables.tf
│   ├── terraform.tfvars.example
│   ├── vpc.tf
│   ├── security-groups.tf
│   ├── iam.tf
│   ├── ecr.tf
│   ├── ec2.tf
│   ├── alb.tf
│   ├── autoscaling.tf
│   ├── outputs.tf
│   ├── Dockerfile
│   │
│   └── SampleApp/
│       ├── pom.xml
│       ├── src/
│       └── target/
│
└── Documentation/
    ├── README.md
    └── Level_7_AWS_Infrastructure_as_Code_with_Terraform_COMPLETE_PROJECT_DOCUMENTATION.pdf

```

---

# 📄 Terraform Files
**provider.tf**

Defines the Terraform and AWS provider configuration.

**variables.tf**

Contains reusable Terraform variables such as:

AWS region
Project name
Environment
Instance type
VPC CIDR
Public subnet CIDRs
Private subnet CIDRs

**terraform.tfvars**

Provides example environment-specific values.

Create your local:

terraform.tfvars

from this file.

Do not commit sensitive values.

**vpc.tf**

Creates and configures:

VPC
Public subnets
Private subnets
Internet Gateway
NAT Gateway
Public route table
Private route table
Route associations

**security-groups.tf**

Creates security groups for:

Application Load Balancer
EC2 application instances

The EC2 application traffic is restricted to the intended ALB-to-
application path.

**iam.tf**

Creates:

IAM role
IAM policy
IAM policy attachment
EC2 instance profile

**ecr.tf**

Creates the Amazon ECR repository used for the Docker application
image.

**ec2.tf**

Defines:

EC2 Launch Template
AMI configuration
Instance type
IAM instance profile
Security group
User data
Docker/Tomcat startup
ECR authentication
Application container startup

**alb.tf**

Creates:

Application Load Balancer
Target Group
ALB Listener
ALB networking configuration

**autoscaling.tf**

Creates and configures the Auto Scaling Group using the Launch
Template.

**outputs.tf**

Exports useful infrastructure information such as:

VPC ID
Subnet IDs
Security Group IDs
ECR repository URL
Load Balancer DNS name
Target Group information

---

# 🐳 Docker and SampleApp

The project contains a Java/Tomcat SampleApp.
```text

SampleApp/
│
├── pom.xml
├── src/
│   └── ...
└── target/
    └── ...
```

The Maven project is packaged into a deployable application artifact
and containerized using Docker.

The resulting Docker image is pushed to Amazon ECR.


---

# ⚙️ Terraform Commands

Open the Terraform directory:

cd Terraform

Initialize Terraform:

terraform init

Format the configuration:

terraform fmt

Validate the configuration:

terraform validate

Review the planned infrastructure:

terraform plan

Create the infrastructure:

terraform apply

Display outputs:

terraform output

When the project is no longer required:

terraform destroy

--- 

# 🔐 Security

The project uses separate security controls for the ALB and EC2
application tier.

The intended traffic flow is:
```text

Internet
   ↓
ALB :80
   ↓
EC2 :8080

```

Do not commit:

AWS access keys
AWS secret keys
Passwords
Private keys
.pem files
.ppk files
Sensitive .tfvars files

Use IAM roles/instance profiles wherever possible.

--- 

# 🌐 Application Request Flow
```text
User
 ↓
Application Load Balancer :80
 ↓
Target Group
 ↓
EC2 Instance :8080
 ↓
Docker Container
 ↓
Tomcat
 ↓
Java Web Application
```

--- 

# 🧪 Validation

The following components are verified after Terraform provisioning:

VPC
Public subnets
Private subnets
Route tables
Internet Gateway
NAT Gateway
Security Groups
IAM role
IAM policy
ECR repository
Docker image
Launch Template
EC2 instances
Application Load Balancer
Target Group
Auto Scaling Group
Application through ALB

The final application is accessed through the ALB endpoint.

---

# 📚 Documentation

The complete implementation documentation is available in:
```text

Documentation/
│
├── README.md
└── Level_7_AWS_Infrastructure_as_Code_with_Terraform_COMPLETE_PROJECT_DOCUMENTATION.pdf
```

The documentation contains the complete implementation procedure and
screenshot evidence.

---

# 📸 Implementation Evidence

The Level 7 project documentation contains:

90 implementation screenshots
1 system architecture diagram

The screenshots cover the project from Terraform/AWS CLI setup through
Terraform configuration, networking, security, IAM, ECR, Docker/Tomcat,
Launch Template, ALB, Target Group, Auto Scaling, application
validation and Terraform cleanup.

---

# 🎓 Key Learning Outcomes

Through this project, I learned how to:

Implement Infrastructure as Code using Terraform.
Create AWS infrastructure programmatically.
Parameterize infrastructure using Terraform variables.
Manage AWS networking using Terraform.
Configure public and private subnets.
Configure routing and gateways.
Implement security groups as code.
Manage IAM resources through Terraform.
Create and manage Amazon ECR.
Containerize a Java/Tomcat application.
Configure EC2 Launch Templates.
Automate EC2 initialization with user data.
Configure ALB and Target Groups.
Configure Auto Scaling.
Validate infrastructure using Terraform outputs.
Manage the Terraform lifecycle using init, plan, apply and destroy.

---

# 🏆 Conclusion

This Level 7 project demonstrates how Terraform can be used to define,
provision, manage and destroy a complete AWS application environment
as Infrastructure as Code.

The project combines Terraform with AWS networking, IAM, Amazon ECR,
Docker, EC2, Launch Templates, Application Load Balancer, Target
Groups and Auto Scaling.

The complete infrastructure can be reproduced from Terraform
configuration rather than being manually created through the AWS
console.

---

# 👨‍💻 Author

Manimaran

AWS DevOps | Cloud | Terraform | Docker | Jenkins | AWS

Project: Level 7 – AWS Infrastructure as Code with Terraform

AWS Region: Asia Pacific (Mumbai) – ap-south-1