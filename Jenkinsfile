pipeline {
    agent any
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
