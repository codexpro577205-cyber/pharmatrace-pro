# PharmaTrace Pro - Desktop shortcuts banata hai (ek dafa chalayen)
# Right click -> "Run with PowerShell"

$ErrorActionPreference = 'Continue'
$dir  = Split-Path -Parent $MyInvocation.MyCommand.Path

$panels = @(
  @{ file = 'PharmaTrace Admin.html';    name = 'PharmaTrace Admin' },
  @{ file = 'PharmaTrace SubAdmin.html'; name = 'PharmaTrace Sub Admin' },
  @{ file = 'PharmaTrace Sales.html';    name = 'PharmaTrace Sales' }
)

$browsers = @(
  "$env:ProgramFiles\Microsoft\Edge\Application\msedge.exe",
  "${env:ProgramFiles(x86)}\Microsoft\Edge\Application\msedge.exe",
  "$env:ProgramFiles\Google\Chrome\Application\chrome.exe",
  "${env:ProgramFiles(x86)}\Google\Chrome\Application\chrome.exe",
  "$env:LOCALAPPDATA\Google\Chrome\Application\chrome.exe"
)
$exe = $null
foreach ($b in $browsers) { if ($b -and (Test-Path $b)) { $exe = $b; break } }

$ico        = Join-Path $dir 'PharmaTrace-Pro.ico'
$desktop    = [Environment]::GetFolderPath('Desktop')
$startMenu  = Join-Path $env:APPDATA 'Microsoft\Windows\Start Menu\Programs'
$shell      = New-Object -ComObject WScript.Shell

function New-AppShortcut($path, $appFile, $label) {
  $s = $shell.CreateShortcut($path)
  $url = 'file:///' + ((Join-Path $dir $appFile) -replace '\\','/')
  if ($exe) {
    $s.TargetPath = $exe
    $s.Arguments  = '--app="' + $url + '" --window-size=1400,900'
  } else {
    $s.TargetPath = (Join-Path $dir $appFile)
  }
  $s.WorkingDirectory = $dir
  if (Test-Path $ico) { $s.IconLocation = $ico + ',0' }
  $s.Description = $label + ' - PharmaTrace Pro (offline)'
  $s.Save()
}

$made = 0
foreach ($p in $panels) {
  $target = Join-Path $dir $p.file
  if (-not (Test-Path $target)) { Write-Host ("Nahi mili: " + $p.file) -ForegroundColor Yellow; continue }
  New-AppShortcut (Join-Path $desktop   ($p.name + '.lnk')) $p.file $p.name
  New-AppShortcut (Join-Path $startMenu ($p.name + '.lnk')) $p.file $p.name
  $made++
}

Write-Host ''
if ($made -gt 0) {
  Write-Host ($made.ToString() + ' shortcuts Desktop par ban gaye.') -ForegroundColor Green
  Write-Host 'Pehli dafa pehle "PharmaTrace Admin" kholo aur setup (owner account) banao.'
} else {
  Write-Host 'Koi shortcut nahi bana - HTML files isi folder mein honi chahiye.' -ForegroundColor Red
}
Read-Host 'Band karne ke liye Enter dabayen'
