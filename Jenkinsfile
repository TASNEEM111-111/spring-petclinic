pipeline {
    agent any

    stages {
        stage('Clean Workspace') {
            steps {
                deleteDir()
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('petclinic-app', '.')  
                }
            }
        }

        stage('Run Application with Docker Compose') {
            steps {
                script{
                    sh 'docker-compose up -d'
                }
            }
        }
    }

    post {
        always {
            sh 'docker-compose down'
        }
    }
}

