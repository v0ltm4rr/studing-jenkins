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
	  choice choices: ['First', 'Second'], description: '', name: 'Chose_variant'
	}

    stages {
        stage('First') {
            when {
                expression { params.Chose_variant == 'First' }
            }
         		   steps {
          		      echo ('Hello ' + params.Chose_variant)
          		      powershell 'curl $env:HOST'
          		      powershell '-File ./test_ps.ps1 -UserName $env:TEST_USER'
         		   }
        }
        stage('Second') {
            when {
                expression { params.Chose_variant == 'Second' }
            }
         		   steps {
          		      echo ('Hello ' + params.Chose_variant)
          		      sh 'curl ${HOST}'
         		   }
        }
    }
}
