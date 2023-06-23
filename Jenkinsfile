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
        sh '''
          sudo chown -R jenkins:$(id -g jenkins) /Library/WebServer/Documents/Test-webserver/
          sudo chmod -R 755 /Library/WebServer/Documents/Test-webserver/
        '''
      }
    }

    stage('Deploy to Localhost') {
      steps {
        sh "cp /Users/jd/.jenkins/workspace/Freestyle_master/index.html.en /Library/WebServer/Documents/Test-webserver/"
      }
    }
  }
}

