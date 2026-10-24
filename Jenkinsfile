pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t jenkins-cicd-app .'
            }
        }

        stage('Test') {
            steps {
                sh './test.sh'
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                    docker rm -f jenkins-cicd-app-container || true
                    docker run -d \
                        --name jenkins-cicd-app-container \
                        -p 8082:80 \
                        jenkins-cicd-app
                '''
            }
        }
    }
}
