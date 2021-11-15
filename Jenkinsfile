pipeline {
    agent {label 'AWS-Build-Agents'}
    stages {
        stage('Build Docker iMage and push to ecr') {
            steps {
                sh "./auto/publish"
            }
        }
        stage('Deploy to Production') {
            steps {
                echo 'Call stacker'
                sh "./auto/bundle"
            }
        }
        
    }
}
