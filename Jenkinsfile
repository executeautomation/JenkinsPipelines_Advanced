pipeline {
  agent any
  stages {
    stage('error') {
      steps {
        echo "Get the chromedriver path : ${SELENIUM}"
        sh 'chmod +x build.sh'
      }
    }

  }
  environment {
    SELENIUM = 'c:\\driver\\win'
  }
}
