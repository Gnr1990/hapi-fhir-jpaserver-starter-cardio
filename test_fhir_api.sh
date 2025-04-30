$headers = @{
    "Authorization" = "Bearer <ACCESS_TOKEN>"
    "Content-Type"  = "application/fhir+json"
}

$response = Invoke-RestMethod -Uri "http://localhost:8080/fhir/Patient" -Method Get -Headers $headers
$response