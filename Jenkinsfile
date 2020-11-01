pipeline {
    agent any
   	environment {
 			Value = "Test value "
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
          		      echo $Value
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
