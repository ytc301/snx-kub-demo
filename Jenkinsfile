pipeline {
  agent any
  stages {
    stage('build nginx') {
      steps {
        sh 'docker build -t harbor.hicustom.com/pub/snx-kub-demo:v1 .'
      }
    }
    stage('push') {
      steps {
        sh '''docker login -u admin -p zwhd1903. harbor.hicustom.com
docker push  harbor.hicustom.com/pub/snx-kub-demo:v1'''
      }
    }
  }
}