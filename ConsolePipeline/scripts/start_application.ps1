# Start the .NET console application

$appPath = "C:\ConsolePipeline\MyApp.exe"

# Start the application as a new process
Write-Host "Starting MyApp..."
$process = Start-Process -FilePath $appPath -NoNewWindow -PassThru
if ($process) {
    Write-Host "MyApp started (PID: $($process.Id))."
}
else {
    Write-Host "Failed to start MyApp."
}
