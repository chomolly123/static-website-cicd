pipeline {
    
    agent any
    
    stages {
        stage('Build') {
            steps {
                echo "Building the Docker image from the local Dockerfile..."
        sh "docker build -t static-website-cicd ."
            }
        }
    }
}
