pipeline {
    agent any
    stages {
        // stage('Build') {
        //     steps {
		
        //     }
        // }
        stage('Deploy') {
            steps {
		sh 'docker-compose up -d'
            }
        }
    }
}
