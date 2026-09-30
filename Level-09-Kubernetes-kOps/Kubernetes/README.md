# ☸️ Kubernetes Manifests

This folder contains the Kubernetes manifests used to deploy and
expose the Level 9 calculator application.

## Files

### calculator-deployment.yaml

Creates:

- calculator-app Deployment
- 3 replicas
- Docker Hub application image
- dockerhub-secret
- container port 5000

### calculator-service.yaml

Creates:

- calculator-service
- NodePort Service
- NodePort 30080
- Target port 5000

### nginx-pod.yaml

Temporary test manifest used to verify basic Kubernetes pod scheduling
and lifecycle.

---

## Deploy Application

```bash
kubectl apply -f calculator-deployment.yaml
```

Check pods:

```
kubectl get pods
```
Create Service:

```
kubectl apply -f calculator-service.yaml
```

Check Service:

```
kubectl get svc calculator-service
```
Check Deployment:
```
kubectl get deployment calculator-app
```
Check ReplicaSets:
```
kubectl get replicasets
```
Rolling Update

Update the image in:

calculator-deployment.yaml

Then:
```
kubectl apply -f calculator-deployment.yaml
```

Check:
```
kubectl rollout status deployment/calculator-app
```
Rollback
```
kubectl rollout undo deployment/calculator-app
```
Verify:
```
kubectl get pods
kubectl get replicasets