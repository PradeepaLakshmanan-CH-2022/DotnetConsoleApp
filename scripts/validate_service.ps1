# Validate the running status of the .NET console application
$running = Get-Process -Name "ConsolePipeline" -ErrorAction SilentlyContinue
if ($running) {
    Write-Host "Application is running."
} else {
    Write-Host "Application is not running."
    exit 1 # Return a non-zero exit code to indicate failure
}
