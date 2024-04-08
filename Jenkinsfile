pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout code from Git repository
                git 'https://github.com/braindead2408/my-web-app.git'
            }
        }
        
        stage('Build and Deploy') {
            steps {
                // Build Podman image with HTML file
                script {
                    sh 'podman build -t my-web-app .'
                    sh 'podman run -d -p 8080:80 my-web-app'
                }
            }
        }
    }
    
    post {
        success {
            echo 'Pipeline executed successfully!'
        }
        failure {
            echo 'Pipeline failed! Check Jenkins console output for details.'
        }
    }
}
