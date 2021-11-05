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
                sh "aws cloudformation create-stack --stack-name todoapp-deployment --template-body file://auto/ecs-deployment.yml --region 'ap-southeast-2' --capabilities CAPABILITY_NAMED_IAM"
            }
        }
    }
}
