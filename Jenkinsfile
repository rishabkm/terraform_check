pipeline {
    agent any

    stages {
        stage('Clone Terraform Repo') {
            steps {
                git 'https://github.com/rishabkm/terraform_check'
            }
        }

        stage('Terraform Init') {
            steps {
                dir('./') {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                dir('./') {
                    sh 'terraform plan'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                dir('./') {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}
