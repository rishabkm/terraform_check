pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/your-username/terraform-jenkins-demo.git'
            }
        }

        stage('Init') {
            steps {
                bat 'terraform init'
            }
        }

        stage('Plan') {
            steps {
                bat 'terraform plan'
            }
        }

        stage('Apply') {
            steps {
                bat 'terraform apply -auto-approve'
            }
        }
    }
}
