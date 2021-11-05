pipeline {
    agent {label 'AWS-Build-Agents'}
    stages {
        stage('Build and Publish to AWS ECR') {
            steps {
                echo 'Build docker image t and push to ECR'
                sh "./auto/publish"
            }
        }
        stage('Deploy to staging') {
            steps {
                echo 'Push CloudFormation'
                sh "aws cloudformation create-stack --stack-name ToDoAPP-Stack --template-body file://auto/ecs-deployment.yml --region 'ap-southeast-2' --capabilities CAPABILITY_NAMED_IAM"
            }
        }
        stage('Deploy to Prod') {
            steps {
                echo 'Push CloudFormation'
                sh "aws cloudformation create-stack --stack-name todoapp-deployment-2 --template-body file://auto/ecs-deployment2.yml --region 'ap-southeast-2' --capabilities CAPABILITY_NAMED_IAM"
            }
        }
    }
}
