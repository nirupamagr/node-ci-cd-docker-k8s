
Node.js CI/CD — Docker & Kubernetes Demo
========================================

This project shows how to build, run, and test a simple Node.js app with Docker and Kubernetes.

----------------------------------------

How to run
==========

1️⃣ Clone this project:
------------------------
git clone https://github.com/<your-username>/node-ci-cd-docker-k8s.git
cd node-ci-cd-docker-k8s

2️⃣ Build and run with Docker:
------------------------------
docker build -t my-node-app .
docker run -p 3000:3000 my-node-app

Visit http://localhost:3000 — you should see:
Hello World! CI/CD + Docker + K8s demo 🚀

Stop with Ctrl + C.

3️⃣ Deploy to local Kubernetes:
-------------------------------
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
kubectl get pods

4️⃣ Check inside the pod:
-------------------------
kubectl exec -it <pod-name> -- sh
wget -qO- localhost:3000
exit

Inside, you should see:
Hello World! CI/CD + Docker + K8s demo 🚀


Clean up:
-------------
kubectl delete -f k8s/
