Add-Type -AssemblyName System.Windows.Forms

Write-Output "Central Utility Plant Mouse Wiggle"
Write-Output "Press Ctrl+Shift to Exit"

while ($true) {
    
    $currentPos = [System.Windows.Forms.Cursor]::Position

    $x = $currentPos.X + 10
    $y = $currentPos.Y + 10

    
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)

    Start-Sleep -Seconds 2

    [System.Windows.Forms.Cursor]::Position = $currentPos

    Start-Sleep -Seconds 60

}

