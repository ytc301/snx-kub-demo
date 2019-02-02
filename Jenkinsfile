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
        sh 'docker push  harbor.hicustom.com/pub/snx-kub-demo:v1'
      }
    }
  }
}