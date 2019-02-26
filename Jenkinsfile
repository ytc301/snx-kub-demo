pipeline {
  agent {
    node {
      label 'jenkins-jnlp-java'
    }

  }
  stages {
    stage('build nginx') {
      parallel {
        stage('build nginx') {
          steps {
            sh 'docker build -t harbor.hicustom.com/pub/snx-kub-demo:v1 .'
          }
        }
        stage('echo') {
          steps {
            sh '''echo "abcd" >> /tmp/1.txt
echo "11111" >> /tmp/1.txt
echo "ppp" >> /tmp/1.txt
tt=`cat /tmp/1.txt`'''
          }
        }
      }
    }
    stage('push') {
      parallel {
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
        stage('show') {
          steps {
            sh '''echo $tt
echo "show"
cat /tmp/1.txt'''
          }
        }
      }
    }
  }
  environment {
    harbor_addr = 'harbor.hicustom.com'
  }
}