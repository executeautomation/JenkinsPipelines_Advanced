pipeline {
  agent any
  stages {
    stage('Get Env') {
      parallel {
        stage('Get Env') {
          steps {
            echo "Get the chromedriver path : ${SELENIUM}"
            pwsh 'Write-Output "Hello World"'
          }
        }

        stage('') {
          steps {
            waitUntil(initialRecurrencePeriod: 20)
          }
        }

      }
    }

    stage('') {
      steps {
        input(message: 'Are you sure to deploy', ok: 'Yes')
      }
    }

  }
  environment {
    SELENIUM = 'c:\\driver\\win'
  }
}