$headers = @{
    "Content-Type" = "application/x-www-form-urlencoded"
}

$body = @{
    grant_type    = "client_credentials"
    client_id     = "fhir-client"
    client_secret = "fhir-client-secret"
}

$response = Invoke-RestMethod -Uri "http://localhost:7070/realms/fhir-realm/protocol/openid-connect/token" -Method Post -Headers $headers -Body $body

echo $response