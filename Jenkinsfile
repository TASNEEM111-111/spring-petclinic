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
                 sh 'docker build -t petclinic-app .'     
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

