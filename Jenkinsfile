pipeline{
	agent any
 
	stages{
		stage("Execute playbook")
			{
			steps{
				ansiblePlaybook credentialsId: 'masterjenkins', disableHostKeyChecking: true, installation: 'ansible', inventory: '/var/lib/jenkins/workspace/project2/hosts', playbook: '/var/lib/jenkins/workspace/project2/docker_ansi.yml', vaultTmpPath: ''
     			     }
			}
		stage("build php")
			{
			steps{
				sh 'cd website'
				sh 'ls -lart'
				sh 'pwd'
				sh 'docker build . -t webapp/php'
				sh 'docker run -d -p 80:80 --name mysite webapp/php'
			     }				

			}
		}
}
