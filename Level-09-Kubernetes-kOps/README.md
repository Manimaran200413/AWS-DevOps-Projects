# 🚀 Level 9 – Kubernetes Cluster Deployment using AWS kOps

## 📌 Project Title

**Kubernetes Cluster Deployment and Flask Calculator Application**

---

## 📖 Project Overview

Level 9 demonstrates the deployment and management of a Kubernetes
cluster on AWS using kOps and Amazon EC2.

The Kubernetes cluster is created and managed using kOps, while Amazon
S3 is used as the kOps cluster state store.

Cilium provides the Kubernetes networking layer.

A Flask Calculator application is containerized and stored in Docker
Hub. The application is deployed to Kubernetes using a Deployment with
three replicas.

A Kubernetes NodePort Service exposes the calculator application
externally through port 30080 and forwards requests to the application
container on port 5000.

The project also demonstrates Kubernetes rolling updates and rollback.

---

# 🎯 Objectives

The main objectives of this project are:

- Create a Kubernetes cluster on AWS using kOps.
- Use Amazon S3 as the kOps cluster state store.
- Provision Kubernetes infrastructure on Amazon EC2.
- Configure Cilium as the Kubernetes networking layer.
- Install and configure kubectl.
- Deploy the Flask Calculator application.
- Run three application replicas.
- Authenticate Kubernetes with Docker Hub using imagePullSecret.
- Expose the application using a NodePort Service.
- Configure NodePort 30080.
- Forward traffic to application port 5000.
- Validate the application from a browser.
- Perform a Kubernetes rolling update.
- Observe ReplicaSet transitions.
- Perform a Kubernetes rollback.
- Validate the application after rollback.
- Clean up the Kubernetes cluster.

---

# 🏗️ Architecture

```text
                         AWS Cloud
                    ap-south-1 Region
                           │
                           ▼
                    kOps Kubernetes
                        Cluster
                           │
              ┌────────────┴────────────┐
              │                         │
              ▼                         ▼
        Control Plane              Worker Node
              │                         │
              │                    NodePort :30080
              │                         │
              │                         ▼
              │                 calculator-service
              │                         │
              │                         ▼
              │                calculator-app
              │                    Deployment
              │                         │
              │                ┌────────┼────────┐
              │                ▼        ▼        ▼
              │              Pod      Pod      Pod
              │                │        │        │
              │                └────────┼────────┘
              │                         │
              │                         ▼
              │                  Flask Container
              │                       :5000
              │
              ▼
            Cilium
              │
              ▼
        Kubernetes Network

Docker Hub
    │
    ▼
imagePullSecret
    │
    ▼
Kubernetes Pods

Amazon S3
    │
    ▼
kOps State Store

```

---

# 🔄 Complete Project 

```
AWS EC2
   ↓
Install AWS CLI
   ↓
Install kOps
   ↓
Install kubectl
   ↓
Create S3 State Store
   ↓
Configure KOPS_STATE_STORE
   ↓
Prepare SSH Keys
   ↓
Create kOps Cluster
   ↓
Update Cluster
   ↓
Validate Cluster
   ↓
Verify Control Plane + Worker
   ↓
Verify Cilium
   ↓
Create Docker Hub imagePullSecret
   ↓
Create Kubernetes Deployment
   ↓
Create 3 Application Pods
   ↓
Create NodePort Service
   ↓
Expose Port 30080
   ↓
Browser Validation
   ↓
Rolling Update
   ↓
ReplicaSet Transition
   ↓
Rollback
   ↓
Application Validation
   ↓
Cluster Cleanup

```

---

# 🛠️ Technologies and Services

Cloud Platform
Amazon Web Services (AWS)
Compute
Amazon EC2
Operating System
Amazon Linux 2023
Kubernetes
Kubernetes
kOps
kubectl
Networking
Cilium
Containerization
Docker
Container Registry
Docker Hub
Storage
Amazon S3
Application
Flask Calculator
Kubernetes Resources
Deployment
ReplicaSet
Pod
Service
NodePort
Secret
imagePullSecret

---

# 📋 Project Configuration

| Parameter | Value |
| ----------- | ----------- |
| AWS Region | ap-south-1 |
| Cluster Name | level9.k8s.local |
| kOps State Store | S3 |
| S3 Bucket | 1kops |
| kOps Version | 1.36.2 |
| kubectl Version | v1.37.0 |
| CNI | Cilium |
| Deployment | calculator-app |
| Replicas | 3 |
| Service | calculator-service |
| Service Type | NodePort |
| NodePort | 30080 |
| Container Port | 5000 |
| Registry | Docker Hub |
| Image Pull Secret	| dockerhub-secret |

---

# 📁 Repository Structure

```text

Level-09-Kubernetes-kOps/
│
├── README.md
├── .gitignore
│
├── Kubernetes/
│   ├── calculator-deployment.yaml
│   ├── calculator-service.yaml
│   ├── pod.yaml
│   └── README.md
│
├── Application/
│   ├── Dockerfile
│   ├── cal_App/
│   │   ├── templates/
│   │   │   └── index.html
│   │   ├── .dockerignore
│   │   ├── Dockerfile│
│   │   └── requirements.txt
│   ├── cal_App.v2/
│   │   ├── templates/
│   │   │   └── index.html
│   │   ├── .dockerignore
│   │   ├── Dockerfile│
│   │   └── requirements.txt
│   └── README.md
│
├── kOps/
│   └── README.md
│
└─ Documentation/
   ├── README.md
   └── Level_9_Kubernetes_AWS_kOps.pdf

``` 

---

# ☸️ Kubernetes Deployment

The calculator application is deployed using:

Deployment:
calculator-app

Replicas:
3

Container Port:
5000

The Deployment maintains three replicas of the calculator application.

---

# 🌐 Kubernetes Service

The application is exposed using a NodePort Service.

Service:
calculator-service

Type:
NodePort

NodePort:
30080

Target Port:
5000

Traffic flow:

```

Browser
   ↓
Worker Node Public IP :30080
   ↓
calculator-service
   ↓
calculator-app
   ↓
Pod
   ↓
Flask :5000

```

---

# 🔐 Docker Hub Authentication

The Kubernetes cluster uses an imagePullSecret:

**dockerhub-secret**

The secret is used to authenticate Kubernetes with Docker Hub when
pulling the application image.

---

# 🔄 Rolling Update

The project demonstrates Kubernetes rolling update behavior.

```text

Old ReplicaSet
      ↓
New Application Image
      ↓
New ReplicaSet
      ↓
New Pods Ready
      ↓
Old ReplicaSet Scaled Down

```

The project verifies the ReplicaSet transition using:

**kubectl get rs**
**kubectl get pods**
**kubectl rollout status deployment/calculator-app**

---

# ↩️ Rollback

The previous application version is restored using:

kubectl rollout undo deployment/calculator-app

Then verify:

**kubectl get rs**
**kubectl get pods**
**kubectl rollout status deployment/calculator-app**

The Level 9 implementation demonstrates the rollback and subsequent
browser validation.

---

# 🧪 Application Validation

```text

The application is tested through:

http://<worker-node-public-ip>:30080

Example request flow:

Browser
   ↓
Worker Public IP
   ↓
30080
   ↓
NodePort
   ↓
Service
   ↓
Pod
   ↓
Flask Calculator

```

---

# 🔍 Kubernetes Validation Commands

Check cluster:

**kubectl cluster-info**

Check nodes:

**kubectl get nodes**

Check all pods:

**kubectl get pods -A**

Check application pods:

**kubectl get pods**

Check Deployment:

**kubectl get deployment**

Check ReplicaSets:

**kubectl get replicasets**

Check Service:

**kubectl get svc**

Check detailed Service information:

**kubectl describe svc calculator-service**

Check Deployment rollout:

**kubectl rollout status deployment/calculator-app**

Check rollout history:

**kubectl rollout history deployment/calculator-app**

Rollback:

**kubectl rollout undo deployment/calculator-app**

---

# ☁️ kOps Commands

Configure the state store:

**export KOPS_STATE_STORE=s3://1kops**

Create the cluster configuration:

**kops create cluster --name level9.k8s.local**

Update the cluster:

**kops update cluster level9.k8s.local --yes**

Validate:

**kops validate cluster**

View cluster:

**kops get cluster**

Delete the cluster after testing:

**kops delete cluster level9.k8s.local --yes**

---
# 📊 Kubernetes Networking

Cilium is used as the Kubernetes networking layer.

```text

Kubernetes
     │
     ▼
  Cilium
     │
     ├── Control Plane
     ├── Worker Node
     └── Application Pods
```

---

# 🧪 Validation Checklist

 AWS CLI installed
 kOps installed
 kubectl installed
 S3 state store available
 KOPS_STATE_STORE configured
 SSH key prepared
 kOps cluster created
 Cluster updated
 Cluster validated
 Control-plane node Ready
 Worker node Ready
 Cilium running
 CoreDNS running
 Kubernetes system components running
 Docker Hub imagePullSecret created
 calculator-app Deployment created
 Three calculator pods running
 ReplicaSet shows 3 ready replicas
 calculator-service created
 NodePort 30080 available
 Worker security group allows TCP 30080
 Calculator accessible through browser
 Rolling update tested
 New ReplicaSet verified
 Old ReplicaSet scaled down
 Rollback tested
 Application verified after rollback
 kOps cluster deleted

---

# 🔐 Security

Never commit the following information:

AWS Access Keys
AWS Secret Keys
Docker Hub Password
Docker Hub Access Tokens
SSH Private Keys
.pem files
.ppk files
Kubernetes Secret Values

Use:

IAM roles where possible
Short-lived credentials
Kubernetes Secrets
Docker Hub access tokens
Redacted screenshots

Do not commit:

aws configure
credentials
~/.aws/
~/.ssh/id_rsa

---

# 🧹 Cleanup

After completing the project:

**kops delete cluster level9.k8s.local --yes**

Verify that the AWS resources created by kOps have been removed.

---

# 🎓 Key Learning Outcomes

Through this project, I learned:

Kubernetes cluster administration
AWS EC2 integration with Kubernetes
kOps cluster lifecycle management
Amazon S3 as a kOps state store
Cilium networking
kubectl administration
Kubernetes Deployments
Pods
ReplicaSets
Kubernetes Services
NodePort
Docker Hub integration
imagePullSecrets
Rolling updates
Rollbacks
Kubernetes troubleshooting
Application deployment and validation

---

# 🏆 Conclusion

This Level 9 project demonstrates the deployment of a Kubernetes
cluster on AWS using kOps and Amazon EC2.

Amazon S3 is used as the kOps state store and Cilium provides the
cluster networking layer.

A Flask Calculator application is deployed with three replicas and
exposed externally using a NodePort Service.

The project also demonstrates rolling update and rollback capabilities,
providing practical experience with Kubernetes application lifecycle
management.

---

# 👨‍💻 Author

Manimaran

AWS DevOps | AWS Cloud | Terraform | Docker | Kubernetes

Project: Level 9 – Kubernetes Cluster Deployment using AWS kOps

AWS Region: ap-south-1

Cluster: level9.k8s.local