pipeline {
  agent any
  stages {
    stage('error') {
      steps {
        echo "Get the chromedriver path : ${SELENIUM}"
        pwsh(script: 'Write-Output "Hello World"')
      }
    }

  }
  environment {
    SELENIUM = 'c:\\driver\\win'
  }
}
