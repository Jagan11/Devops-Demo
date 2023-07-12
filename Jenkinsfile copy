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
          if (isUnix()) {
            sh '''
              curl -fsSL https://get.docker.com -o get-docker.sh
              echo 'Application@123$' | sudo -S sh get-docker.sh
            '''
          } else if (isMac()) {
            sh '''
              curl -fsSL https://download.docker.com/mac/stable/Docker.dmg -o Docker.dmg
              sudo hdiutil attach Docker.dmg
              sudo /Volumes/Docker/Docker.app/Contents/MacOS/install
              sudo hdiutil detach /Volumes/Docker
            '''
          } else {
            echo "Unsupported operating system. Please install Docker manually."
          }
        }
      }
    }
  }
}

