pipeline {
  agent any
  stages {
    stage('error') {
      steps {
        echo "Get the chromedriver path : ${SELENIUM}"
        powershell(". '.\build.ps1'")
      }
    }

  }
  environment {
    SELENIUM = 'c:\\driver\\win'
  }
}
