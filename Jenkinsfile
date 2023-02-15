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
  }
}
