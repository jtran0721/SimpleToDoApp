pipeline {
    agent {label 'AWS-Build-Agents'}
    stages {
        stage('Build Docker Image') {
            steps {
              echo 'Building Docker Image'
              sh "docker build -t todoapp.v1.1 ."
        }
        }
        stage('Build') {
            steps {
                echo 'Hello, Build'
            }
        }
    }
}
