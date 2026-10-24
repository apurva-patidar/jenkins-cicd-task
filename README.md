# Jenkins CI/CD Internship Project

## Objective
Build a simple CI/CD pipeline using Jenkins and Docker.

## Tools Used
- Ubuntu Linux
- Jenkins
- Git and GitHub
- Docker
- Nginx

## Project Structure
- Dockerfile: Builds the application image.
- Jenkinsfile: Defines Build, Test, and Deploy stages.
- test.sh: Checks that the application HTML file exists and contains the expected text.
- app/index.html: Sample web application.

## Pipeline Stages
1. Build: Builds the Docker image.
2. Test: Runs basic application checks.
3. Deploy: Runs the application in a Docker container on port 8082.

## How to Run
Build the image:

    docker build -t jenkins-cicd-app .

Run the application:

    docker run -d --name jenkins-cicd-app-container -p 8082:80 jenkins-cicd-app

Open http://localhost:8082 in your browser.

## Verification
The Jenkins pipeline completed successfully, and the Build, Test, and Deploy stages passed.

## Learning Outcomes
- Created a Jenkins declarative pipeline.
- Integrated a GitHub repository with Jenkins.
- Built and deployed a Dockerized web application.
- Automated basic application testing.
