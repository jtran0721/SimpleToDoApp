pipeline {
    agent ('AWS-Build-Agents') 
    stages {
        stage('Test Build') {
            steps {
                sh '''
                docker --version
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