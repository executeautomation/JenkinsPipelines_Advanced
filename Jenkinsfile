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
            waitUntil{
              powershell '''
                try
                {
                    $response = Invoke-WebRequest -Uri http://localhost:81/ -ErrorAction Stop
                    # This will only execute if the Invoke-WebRequest is successful.
                    $StatusCode = $Response.StatusCode
                }
                catch
                {
                    $StatusCode = $_.Exception.Response.StatusCode.value__
                }
                $StatusCode
              '''
            }
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
