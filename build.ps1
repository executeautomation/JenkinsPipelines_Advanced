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
