pipeline {
  agent {
    node {
      label 'jenkins-jnlp-java'
    }

  }
  stages {
    stage('build nginx') {
      steps {
        sh 'docker build -t harbor.hicustom.com/pub/snx-kub-demo:v1 .'
      }
    }
    stage('push') {
      steps {
        script {
          withCredentials([usernamePassword(credentialsId: 'harbor', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
            sh """
            docker logout ${harbor_addr} \
            && docker login ${harbor_addr} -u ${dockerHubUser} -p ${dockerHubPassword} \
            && docker push harbor.hicustom.com/pub/snx-kub-demo:v1
            """
          }
        }

      }
    }
  }
  environment {
    harbor_addr = 'harbor.hicustom.com'
    tt = '`cat /tmp/1.txt`'
  }
}