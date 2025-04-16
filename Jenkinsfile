pipeline {
    agent any

    stages {
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
