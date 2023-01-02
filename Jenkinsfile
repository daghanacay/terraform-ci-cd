pipeline {
    agent any
    environment {
        PATH = "${PATH}:${getTerraformPath()}"
    }
    stages {
        stage('terraform init - dev') {
            steps{
                sh "cd dev"
                sh "terraform init"
                sh "terraform init -auto-approve"
            }
        }
        stage('terraform init - prod') {
            steps{
                sh "cd prod"
                sh "terraform init"
                sh "terraform init -auto-approve"
            }
        }
    }
}

def getTerraformPath(){
    def tfHome = tool name: 'terraform-12', type: 'terraform'
    return tfHome
}