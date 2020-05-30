pipeline {
  agent any
  stages {
    stage('error') {
      steps {
        echo "Get the chromedriver path : ${SELENIUM}"
        sh 'echo "Hello everyone"'
      }
    }

  }
  environment {
    SELENIUM = 'c:\\driver\\win'
  }
}
