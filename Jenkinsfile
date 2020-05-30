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

        stage('Script execution') {
          steps {
            script{
              def msg = powershell(returnStdout: true, script: ".build.ps1")
              println msg
            }
          }
        }

      }
    }

    stage('Deploy') {
      when {
        branch 'master'
      }
      steps {
        input(message: 'Are you sure to deploy', ok: 'Yes')
      }
    }

    stage('Deployed') {
      steps {
        writeFile(file: 'deployed.txt', text: "deployed to ${SELENIUM}")
      }
    }

  }
  environment {
    SELENIUM = 'c:\\driver\\win'
  }
}
