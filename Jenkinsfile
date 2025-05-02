pipeline{
	agent none
 
	stages{
		stage("Execute playbook")
		{
		agent { label 'master' }
			
			steps{
				ansiblePlaybook credentialsId: 'masterjenkins', disableHostKeyChecking: true, installation: 'ansible', inventory: '/var/lib/jenkins/workspace/project2/hosts', playbook: '/var/lib/jenkins/workspace/project2/docker_ansi.yml', vaultTmpPath: ''
     			     }
			
}
		stage("build php")
		{
		agent { label 'worker' }
		
			
			steps{
				git branch: 'main', url: 'https://github.com/nnukalakumar/Project2.git'
			        dir('website') {
				sh 'pwd'
				sh 'cd website'
				sh 'ls -lart'
				sh 'pwd'
				sh 'docker build . -t webapp/php'
				sh 'docker run -d -p 80:80 --name mysite webapp/php'
			     			}
			}
		}
}
}
