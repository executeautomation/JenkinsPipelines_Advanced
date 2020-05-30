pipeline {
  agent any
  stages {
    stage('error') {
      steps {
        echo "Get the chromedriver path : ${SELENIUM}"
        pwsh(script: 'build.ps', label: 'powershel')
      }
    }

  }
  environment {
    SELENIUM = 'c:\\driver\\win'
  }
}