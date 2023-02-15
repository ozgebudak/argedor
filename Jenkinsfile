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
    def remote = [:]
    remote.name = 'test'
    remote.host = '192.168.77.142'
    remote.user = 'ozge'
    remote.password = '1'
    remote.allowAnyHosts = true
    stage('Docker Start') {
      agent any
      steps {
          sshCommand remote: remote, command: "ls -lrt"
      }
    }
  }
}
