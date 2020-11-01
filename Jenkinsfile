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
                // Only say hello if a "greeting" is requested
                expression { params.Chose_variant == 'First' }
            }
         		   steps {
          		      echo 'Hello First'
          		      echo
          		      echo params.Chose_variant
         		   }
        }
        stage('Second') {
            when {
                // Only say hello if a "greeting" is requested
                expression { params.Chose_variant == 'Second' }
            }
         		   steps {
          		      echo 'Hello Second'
          		      echo
          		      echo params.Chose_variant
         		   }
        }
    }
}
