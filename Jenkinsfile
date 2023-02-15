#!groovy

pipeline {
  agent none
  stages {
    stage('Docker Build') {
      agent any
      steps {
          sh 'docker build -t ozge6943/argedor:latest .'
      }
    }
  }
}
