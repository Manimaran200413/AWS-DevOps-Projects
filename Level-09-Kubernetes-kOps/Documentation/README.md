# 📌 Project Title

## Kubernetes Cluster Deployment and Flask Calculator Application


---

# 🏗️ Technology Stack
AWS EC2
Amazon Linux 2023
kOps
Kubernetes
kubectl
Cilium
Docker
Docker Hub
Amazon S3
Flask
NodePort

---

 # ☁️ AWS Infrastructure

The project uses:

Amazon EC2
Amazon S3
AWS Security Groups
AWS networking

Amazon S3 is used as the kOps state store.

The documented state-store bucket is:

**1kops**

---

# ☸️ Kubernetes Configuration
Cluster:
level9.k8s.local

kOps:
1.36.2

kubectl:
v1.37.0

CNI:
Cilium

---

# 🚀 Application Configuration
Application:
Flask Calculator

Deployment:
calculator-app

Replicas:
3

Service:
calculator-service

Service Type:
NodePort

NodePort:
30080

Container Port:
5000

Registry:
Docker Hub

Image Pull Secret:
dockerhub-secret

---

# 📁 Repository Components

```
Kubernetes/
│
├── calculator-deployment.yaml
├── calculator-service.yaml
├── nginx-pod.yaml
└── README.md

```

---

# ☸️ Deployment Manifest

The calculator Deployment creates three application replicas.

```
calculator-app
      │
      ├── Pod 1
      ├── Pod 2
      └── Pod 3
```
The application container listens on:

5000

The Docker Hub image is authenticated using:

**dockerhub-secret**


---

# 🌐 Service Manifest

The calculator application is exposed using:

NodePort: 30080

Traffic flow:
```
Browser
   ↓
Worker Node :30080
   ↓
calculator-service
   ↓
calculator-app
   ↓
Pod :5000

```

---

# 🔐 Docker Hub Authentication

The project uses:

**dockerhub-secret**

as a Kubernetes imagePullSecret.

The secret allows Kubernetes to authenticate against Docker Hub when
pulling the private application image.

---

# 🔄 Rolling Update

The documentation demonstrates changing the calculator application
image/version and applying the updated Deployment.

Kubernetes creates a new ReplicaSet and gradually replaces the old
application pods.

Verification commands:

**kubectl get pods -o wide**
**kubectl rollout status deployment/calculator-app**
**kubectl get deployments**
**kubectl get replicasets**

---

# ↩️ Rollback

Rollback is performed using:

**kubectl rollout undo deployment/calculator-app**

The restored ReplicaSet is then verified using:

**kubectl get rs -o wide**

The calculator application is also tested again through the NodePort.

---

# 🧪 Validation

The complete project validates:

✓ AWS CLI
✓ kOps
✓ kubectl
✓ S3 State Store
✓ Kubernetes Cluster
✓ Control Plane
✓ Worker Node
✓ Cilium
✓ Kubernetes System Pods
✓ Docker Hub Secret
✓ Deployment
✓ Three Replicas
✓ ReplicaSet
✓ NodePort Service
✓ Security Group
✓ Browser Application
✓ Rolling Update
✓ Rollback
✓ Cluster Cleanup
```

---

# 📸 Implementation Evidence

The supplied Level 9 documentation contains 34 implementation
screenshot actions, covering the complete project lifecycle from S3
state-store verification through cluster creation, application
deployment, NodePort access, rolling update, rollback and cleanup.


---

# 🔐 Security Notes

Credential-bearing screenshots should not be committed to GitHub.

Do not expose:

AWS Access Keys
AWS Secret Keys
Docker Hub passwords
Docker Hub tokens
SSH private keys
Kubernetes secret values

The source documentation specifically notes that credential material
was present in original screenshots and should be revoked/rotated if
exposed.

---

# 📚 Documentation Contents

The complete report covers:

Project Overview
Problem Statement
Objectives
Technologies and Services
Prerequisites
System Architecture
Complete Kubernetes Workflow
Project Components and Configuration
Complete Implementation Procedure
Kubernetes Deployment and Service Design
Rolling Update and Rollback
Application Request Flow
Validation and Verification
Troubleshooting
Security Notes
Key Lessons Learned
Interview / Viva Explanation
Conclusion
Complete Project Flow

---

# 🎓 Key Learning Outcomes

This project provides practical experience with:

Kubernetes
AWS EC2
kOps
Amazon S3
Cilium
Docker Hub
Deployments
Pods
ReplicaSets
Services
NodePort
imagePullSecrets
Rolling updates
Rollbacks
Kubernetes troubleshooting

---

# 👨‍💻 Author

Manimaran

AWS DevOps | AWS Cloud | Terraform | Docker | Kubernetes

Level 9 – Kubernetes Cluster Deployment using AWS kOps