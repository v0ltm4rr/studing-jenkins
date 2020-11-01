pipeline {
    agent any
    parameters {
	  choice choices: ['First', 'Second'], description: '', name: 'Chose variant'
	}

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
    }
}
