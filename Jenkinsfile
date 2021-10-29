pipeline {
    agent {label 'AWS-Build-Agents'}
    stages {
        stage('Build Docker Image') {
            container('docker') {
              echo 'docker'
              sh "docker build -t todoapp.v1 ."
        }
        }
        stage('Build') {
            steps {
                echo 'Hello, Build'
            }
        }
    }
}
