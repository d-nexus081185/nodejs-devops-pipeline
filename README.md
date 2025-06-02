Project Title: Node.js DevOps CI/CD Pipeline

Project Overview

This project demonstrates a complete DevOps CI/CD pipeline that deploys a Node.js application from GitHub to production using Jenkins, Docker, Kubernetes, and AWS infrastructure managed by Terraform.

Architecture Diagram

GitHub Repository → Jenkins Pipeline → Docker Build → Docker Hub → Kubernetes → AWS Infrastructure
                                                              ↓
                                                       Grafana Monitoring

Technologies Used

Source Control: GitHub

CI/CD: Jenkins

Containerization: Docker

Orchestration: Kubernetes

Infrastructure: AWS (EC2, VPC, Load Balancer)

IaC: Terraform

Monitoring: Grafana + Prometheus

Container Registry: Docker Hub

Prerequisites

AWS Account with appropriate permissions

Docker Hub account

GitHub account

kubectl installed locally

Terraform installed locally

Jenkins server access

Project Structure

nodejs-devops-pipeline/
├── app/
│   ├── app.js
│   ├── package.json
│   └── package-lock.json
├── docker/
│   └── Dockerfile
├── kubernetes/
│   ├── deployment.yaml
│   ├── service.yaml
│   └── namespace.yaml
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── terraform.tfvars
├── jenkins/
│   └── Jenkinsfile
├── monitoring/
│   ├── prometheus-config.yaml
│   └── grafana-dashboard.json
└── README.md

Step-by-Step Implementation

1. Repository Setup

git clone https://github.com/d-nexus081185/nodejs-devops-pipeline.git
cd nodejs-devops-pipeline

2. Node.js Application Setup

Basic Express server with Prometheus metrics exposed.

3. Docker Configuration

Dockerfile is located in the docker/ directory. Builds a non-root Node.js container.

4. Kubernetes Manifests

Kubernetes deployment, service, and namespace defined in kubernetes/ directory.

5. Jenkins Pipeline

Automated CI/CD pipeline defined in jenkins/Jenkinsfile includes stages:

Checkout

Install Dependencies

Run Tests

Build Docker Image

Push to Docker Hub

Deploy to Kubernetes

Health Check

6. Terraform Infrastructure

Terraform config under terraform/ sets up:

VPC, subnets, route tables

Internet/NAT Gateway

EC2 Instances

Security Groups

7. Monitoring

Prometheus config to scrape app metrics.

Grafana dashboard to visualize metrics.

Deployment Steps

Setup Terraform infrastructure:

cd terraform
terraform init
terraform apply

Build and push Docker image using Jenkins pipeline.

Deploy application using Jenkins pipeline to EKS or Kubernetes on EC2.

Access app via LoadBalancer IP or DNS.

View metrics at /metrics endpoint.

Monitor using Grafana.

Output

App Endpoint: http://<load-balancer-dns>

Health Check: http://<load-balancer-dns>/health

Metrics: http://<load-balancer-dns>/metrics

Grafana Dashboard: http://<grafana-public-ip>:3000

Author

Your Name – Chukwuemeka Ezeobi [ https://github.com/d-nexus081185 ]
