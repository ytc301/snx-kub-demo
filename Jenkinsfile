pipeline {
  agent { node { label "jenkins-jnlp-java" } }
  stages {
    stage('build nginx') {
      steps {
        sh 'docker build -t harbor.hicustom.com/pub/snx-kub-demo:v1 .'
      }
    }
    stage('push') {
      steps {
        sh """
	  docker login -u pstest -p Test1234567890  harbor.hicustom.com \
	  && docker push  harbor.hicustom.com/pub/snx-kub-demo:v1
	"""
      }
    }
  }
}
