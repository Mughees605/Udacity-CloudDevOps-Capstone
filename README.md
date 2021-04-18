
<h1 >Cloud DevOps Engineer Nanodegree by Udacity: Capstone Project</h1>

<!-- ABOUT THE PROJECT -->
## About The Project

This project is a part from Udacity Nanodegree.
In this project, it is required to apply the skills and knowledge obtained from the program, which includes:
1. Worked with AWS
2. Used CircleCI to implement Continuous Integration and Continuous Deployment (CI/CD)
4. Used Ansible and CloudFormation to deploy clusters
5. Built Kubernetes clusters (AWS EKS)
6. Built Docker containers in pipelines (Dockerhub)

The CI/CD pipeline for microservices applications is developed with rolling deployment. Linting is also done to check typographical errors. 

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

1. Create an AWS account
2. Connect Your Repository with CircleCI.
3. Create a [Docker](hub.docker.com) account.
4. EKS can be created manually by using the command below.
```
eksctl create cluster --name <cluster-name> --version 1.16 --nodegroup-name standard-workers --node-type t3.medium --nodes 3 --nodes-min 1 --nodes-max 4 --node-ami auto --region us-east-1
```
6. Setup the credentials in CircleCi for AWS credentials and dockerhub credentials

### Installation

1. Clone the repo
```sh
git clone https://github.com/Mughees605/Udacity-CloudDevOps-Capstone
```
2. Run `make lint` to lint the app locally.
3. Run `./run-docker.sh` and `./run-kubernetes.sh` to run locally.
4. Upload the api to DockerHub by using `./upload-docker.sh`
5. Used CircleCI for CI/CD