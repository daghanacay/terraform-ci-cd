pipeline {
    agent any
    environment {
        PATH = "${PATH}:${getTerraformPath()}"
    }
    stages {
        stage('terraform init - dev') {
            steps{
                dir('dev') { sh "pwd" }
                sh "terraform init"
                sh "terraform apply -auto-approve"
            }
        }
        stage('terraform init - prod') {
            steps{
                dir('prod') { sh "pwd" }
                sh "terraform init"
                sh "terraform apply -auto-approve"
            }
        }
    }
}

def getTerraformPath(){
    def tfHome = tool name: 'terraform-12', type: 'terraform'
    return tfHome
}