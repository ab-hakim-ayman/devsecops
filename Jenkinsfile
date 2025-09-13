pipeline {
    agent any
    environment {
        DOCKER_IMAGE = "myorg/dev-sec-ops:${env.BUILD_NUMBER}"
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Lint & Test') {
            steps {
                sh 'pre-commit run --all-files'
                sh 'pytest --cov=.'
            }
        }
        stage('Build & Scan Docker') {
            steps {
                sh "docker build -t ${DOCKER_IMAGE} ."
                sh "trivy image --exit-code 1 ${DOCKER_IMAGE}"
            }
        }
        stage('Push & Deploy') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'PASS', usernameVariable: 'USER')]) {
                    sh "echo $PASS | docker login -u $USER --password-stdin"
                    sh "docker push ${DOCKER_IMAGE}"
                }
                sh "helm upgrade --install dev-sec-ops ./helm -f helm/values-prod.yaml"
            }
        }
    }
    post {
        failure {
            mail to: 'devsecops-team@example.com',
                 subject: "Jenkins Build Failed: ${env.JOB_NAME}",
                 body: "Build failed. Check Jenkins logs."
        }
    }
}
