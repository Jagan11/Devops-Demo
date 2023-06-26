pipeline {
  agent any

  stages {
    stage('Git Checkout') {
      steps {
        script {
          git branch: 'master', url: 'https://github.com/Jagan11/Devops-Demo.git'
        }
      }
    }

    stage('Configure Permissions') {
      steps {
        sh 'echo Application@123$ | sudo -S chown -R jd:staff /Library/WebServer/Documents/Test-webserver/'
        sh 'echo Application@123$ | sudo -S chmod -R 777 /Library/WebServer/Documents/Test-webserver/'
      }
    }

    stage('Deploy to Localhost') {
      steps {
        sh "cp /Users/jd/.jenkins/workspace/Freestyle_master/index.html.en /Library/WebServer/Documents/Test-webserver/"
      }
    }

    stage('Install Docker') {
      steps {
        script {
          sh '''
            curl -fsSL https://get.docker.com -o get-docker.sh
            sudo sh get-docker.sh
          '''
        }
      }
    }

    stage('Build Docker Image') {
      steps {
        script {
          sh '''
            docker build -t my-web-server-image /path/to/your/dockerfile
          '''
        }
      }
    }

    stage('Run Docker Container') {
      steps {
        script {
          sh '''
            docker run -d -p 80:80 --name my-web-server-container my-web-server-image
          '''
        }
      }
    }
  }
}

