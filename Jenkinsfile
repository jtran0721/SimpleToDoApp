pipeline {
    agent {label 'AWS-Build-Agents'}
    stages {
        stage('Build Docker Image') {
            steps {
              echo 'Building Docker Image'
               
        }
        }
        stage('Publish to AWS ECR') {
            steps {
                echo 'Get the artiafact and push to ECR'
                sh "./auto/publish"
            }
        }
    }
}
