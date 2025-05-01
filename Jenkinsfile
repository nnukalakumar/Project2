pipeline{
agent any
 
stages{
stage("Execute playbook"){
steps{
ansiblePlaybook credentialsId: 'masterjenkins', disableHostKeyChecking: true, installation: 'ansible', inventory: '/var/lib/jenkins/workspace/project2/hosts', playbook: '/var/lib/jenkins/workspace/project2/docker_ansi.yml', vaultTmpPath: ''
}
}
}
}
