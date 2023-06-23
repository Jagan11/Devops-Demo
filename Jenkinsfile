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

    stage('Deploy to Localhost') {
      steps {
        script {
          sh 'cp  /Users/jd/.jenkins/workspace/Freestyle_master/index.html  /Library/WebServer/Documents/Test-webserver/'
        }
      }
    }
  }
}

