pipeline {
    agent {label 'AWS-Build-Agents'}
    stages {
        stage('Deploy to staging') {
            steps {
                echo 'Push CloudFormation'
                sh "aws cloudformation create-stack --stack-name ToDoAPP-Stack-2 --template-body file://auto/ecs-deployment2.yml --region 'ap-southeast-2' --capabilities CAPABILITY_NAMED_IAM"
            }
        }
        
    }
}
