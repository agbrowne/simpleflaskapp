pipeline {
    agent any
    environment {
	DOCKER_LOGIN=credentials('DOCKER_LOGIN')
    }
    stages {
        stage('Build') {
            steps {
		sh 'docker-compose build'
		sh 'docker login -u ${DOCKER_LOGIN_USR} -p ${DOCKER_LOGIN_PSW}'
		sh 'docker-compose push'
            }
        }
        stage('Deploy') {
            steps {
		sh 'docker-compose up -d'
            }
        }
    }
}
