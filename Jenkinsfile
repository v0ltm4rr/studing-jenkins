pipeline {
    agent any
   	environment {
 			HOST = '2ip.ru'
 			TEST_USER = 'test_user'
	}
    options {
  		timestamps()
	}
    parameters {
	  choice choices: ['PowerShell', 'Bash'], description: '', name: 'Chose_shell'
	}

    stages {
        stage('PowerShell') {
            when {
                expression { params.Chose_shell == 'PowerShell' }
            }
         		   steps {
          		      echo ('Hello ' + params.Chose_shell)
          		      powershell 'curl $env:HOST'
          		      powershell './test_ps.ps1 -UserName $env:TEST_USER'
         		   }
        }
        stage('Bash') {
            when {
                expression { params.Chose_shell == 'Bash' }
            }
         		   steps {
          		      echo ('Hello ' + params.Chose_shell)
          		      sh 'curl ${HOST}'
         		   }
        }
    }
}
