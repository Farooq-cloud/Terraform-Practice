pipeline {
    agent any

    environment {
        
        AWS_ECR_REGION = 'ap-south-1' // Replace with your AWS region for ECR
        // AWS_CREDENTIALS = credentials('your-credentials-id')
        DOCKER_IMAGE_NAME = 'farooq/httpd-custom' // Replace with your Docker image name
    }

    stages {
        stage('SCM Checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/ECR-Testing']], extensions: [], userRemoteConfigs: [[credentialsId: 'github', url: 'https://github.com/Farooq-cloud/Terraform-Practice.git']])
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sudo docker.build(DOCKER_IMAGE_NAME, "-f Dockerfile .")
                }
            }
        }

        stage('Push to ECR') {
            steps {
                script {
                    withCredentials([string(credentialsId: 'ECR', variable: 'AWS_CREDENTIALS')]) {
                        docker.withRegistry('https://097348731047.dkr.ecr.ap-south-1.amazonaws.com', 'ecr:' + ECR_CREDS) {
                            docker.image(DOCKER_IMAGE_NAME).push()
                        }
                    }
                }
            }
        }
    }
}

