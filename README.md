# Jenkins CI/CD Pipeline with Docker

## Project Overview
This project demonstrates a basic CI/CD pipeline using Jenkins, Git, GitHub, Docker, and Nginx.

## Tools and Technologies
- Ubuntu Linux
- Jenkins
- Git and GitHub
- Docker
- Nginx

## Project Structure
- `Dockerfile` - Builds the Docker image.
- `Jenkinsfile` - Defines the Build, Test, and Deploy stages.
- `test.sh` - Runs basic application checks.
- `app/index.html` - Contains the sample web application.

## Pipeline Stages
1. **Build:** Builds the Docker image `jenkins-cicd-app`.
2. **Test:** Checks the HTML file and expected heading.
3. **Deploy:** Runs the application container on port 8082.

## How to Run
Build the image:

    docker build -t jenkins-cicd-app .

Run the application:

    docker run -d --name jenkins-cicd-app-container -p 8082:80 jenkins-cicd-app

Open http://localhost:8082 in your browser.

## Verification
- Docker image built successfully.
- Application checks passed.
- Deployment completed successfully.
- Jenkins pipeline finished with `SUCCESS`.
- Automatic SCM polling was verified after a GitHub commit.

## GitHub Repository
https://github.com/apurva-patidar/jenkins-cicd-task
