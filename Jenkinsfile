pipeline {
    agent any

    stages {
       stage('Checkout') {
            steps {
              checkout([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url:'https://github.com/TASNEEM111-111/spring-petclinic.git']]])
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
            echo "aa"
           
        }
    }
}

