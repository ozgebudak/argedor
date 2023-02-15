#!groovy

pipeline {
  agent none
  stages {
    stage('Docker Build') {
      agent any
      steps {
          sh 'docker build -t ozge6943/argedortest:latest .'
      }
    }
    stage('Docker Push') {
      agent any
      steps {
          sh 'docker login -u $DockerHubUser -p $DockerHubPassword'
          sh 'docker push ozge6943/argedortest:latest'
      }
    }
    stage('Docker Start') {
      agent any
      steps {
          sh 'sshpass -p 1 ssh -t -t -o StrictHostKeyChecking=no ozge@192.168.77.142'
          sh 'docker pull ozge6943/argedortest:latest'
          sh 'docker run -d -p 3000:3000 argedortest ozge6943/argedortest'
      }
    }
  }
}
