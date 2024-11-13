pipeline {
    agent any
    environment {
        PATH = "/usr/share/maven:${env.PATH}"
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', credentialsId: 'bd002a01-79b8-4686-acdf-af6af9464f02', url: 'https://github.com/Gopalakrishna530/RegistrationPage.git'
            }
        }
        stage('Compile') {
            steps {
                dir('com.registrationPage') {
                    sh 'mvn compile'
                }
            }
        }
        stage('Package') {
            steps {
                dir('com.registrationPage') { 
                    sh 'mvn clean package'
                }
            }
        }
        stage('war file moving to Gopal directory') {
            steps {
                sh 'cp /var/lib/jenkins/workspace/regi/com.registrationPage/target/com.registrationPage.war Gopal/'
            }
        }
        stage('Build Docker Image') {
            steps {
                dir('Gopal') {  
                    script {
                        sh 'docker build -t gopal:latest .'
                    }
                }
            }
        }
        stage(' run the Container From Tomcat') {
            steps {
                script {
                    sh 'docker stop gopal-container || true && docker rm gopal-container || true'
                    
                    sh 'docker run -d --name gopal-container -p 8082:8080 gopal:latest'
                }
            }
        }
    }
}
