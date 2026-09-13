@Library('devops-libs') _
pipeline {
    
    agent any
    tools {
        maven 'mymaven'
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out code...'
                checkoutcode()
            }
        }
        stage('Build') {
            steps {
                echo 'Building...'
                // Add build steps here
                mavenBuild()
            }
        }
        stage('Docker Build') {
            steps {
                echo 'Building Docker image...'
                script {
                    def imageName = "harsha0310/shared-jenkins"
                    def tag = "${env.BUILD_NUMBER}"
                    dockerBuild(imageName, tag)
                }
            }
        }
        stage('Docker Push') {
            steps {
                echo 'Docker Push...'
                script {
                    def imageName = "harsha0310/shared-jenkins"
                    def tag = "${env.BUILD_NUMBER}"
                    dockerPush(imageName, tag)
                }
            }
        }
    }
}
