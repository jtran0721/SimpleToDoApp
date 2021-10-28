pipeline {
    agent {label 'AWS-Build-Agents'}
    stages {
        stage('Test Build') {
            steps {
                sh '''
                ./auto/build
                '''
            }
        }
        stage('Build') {
            steps {
                echo 'Hello, Build'
            }
        }
    }
}
