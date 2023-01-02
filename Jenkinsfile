pipeline {
    agent any
    environment {
        PATH = "${PATH}:${getTerraformPath()}"
    }
    stages {
        stage('terraform init - dev') {
            steps{
                dir('dev') { 
                    sh "pwd" 
                    sh "ls"
                    sh "terraform init"
                    
                }
                sh "ansible-playbook terraform-ansible.yml"
                
            }
        }
        
    }
}

def getTerraformPath(){
    def tfHome = tool name: 'terraform-12', type: 'terraform'
    return tfHome
}