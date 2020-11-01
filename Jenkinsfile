pipeline {
    agent any
   	environment {
 			//HOST = "${params.Value}"
 			HOST = '2ip.ru'
	}
    options {
  		timestamps()
	}
    parameters {
	  choice choices: ['First', 'Second'], description: '', name: 'Chose_variant'
	  //string defaultValue: '2ip.ru', description: '', name: 'Value', trim: false
	}

    stages {
        stage('First') {
            when {
                expression { params.Chose_variant == 'First' }
            }
         		   steps {
          		      echo ('Hello ' + params.Chose_variant)
          		      powershell 'curl $HOST'
         		   }
        }
        stage('Second') {
            when {
                expression { params.Chose_variant == 'Second' }
            }
         		   steps {
          		      echo ('Hello ' + params.Chose_variant)
         		   }
        }
    }
}
