# Stop the .NET console application

$processName = "MyApp.exe"

# Get the running process
$runningProcess = Get-Process -Name $processName -ErrorAction SilentlyContinue

if ($runningProcess) {
    # Stop the process gracefully
    $runningProcess | ForEach-Object {
        $process = $_
        Write-Host "Stopping $processName (PID: $($process.Id))..."
        $process.CloseMainWindow()
        if (-not $process.HasExited) {
            $process | Stop-Process -Force
        }
    }
    Write-Host "$processName stopped."
}
else {
    Write-Host "$processName is not running."
}
