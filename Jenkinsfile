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
        stage('Deploy to staging') {
            steps {
                echo 'Push CloudFormation'
                sh "aws cloudformation create-stack --stack-name prd-deployment --template-body file://$PWD/ecs-deployment.yml --region 'ap-southeast-2'"
            }
        }
    }
}
