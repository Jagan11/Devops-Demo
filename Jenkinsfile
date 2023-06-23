pipeline {
    agent any

    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/your/repository.git'
            }
        }

        stage('Deploy to Localhost') {
            steps {
                sh 'cp index.html /path/to/Library/WebServer/Documents/' // Replace /path/to/Library/WebServer/Documents/ with the actual path to your local server's document root
            }
        }
    }
}

