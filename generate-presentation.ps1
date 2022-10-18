$BackupEncoding = [Console]::OutputEncoding
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$dir = (Get-Location).tostring() + "\build"
[System.IO.Directory]::CreateDirectory($dir)

$index = $dir + "\index.html"
inliner index.html | Out-File -FilePath $index

$arr = $dir + "\arrayVisualizer.html"
inliner arrayVisualizer.html | Out-File -FilePath $arr

$lightswitch = $dir + "\lightswitch.html"
inliner lightswitch.html | Out-File -FilePath $lightswitch

$time = $dir + "\time.html"
inliner time.html | Out-File -FilePath $time

[Console]::OutputEncoding = $BackupEncoding