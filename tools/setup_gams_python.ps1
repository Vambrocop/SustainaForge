param(
  [string]$GamsSystemDir = "",
  [string]$Python = "py -3.12",
  [string]$EnvPath = ".venv-gams",
  [string]$GamsVersion = ""
)

$ErrorActionPreference = "Stop"

function Resolve-GamsSystemDir {
  param([string]$Candidate)

  if ($Candidate) {
    if (-not (Test-Path -LiteralPath $Candidate)) {
      throw "GAMS system directory does not exist: $Candidate"
    }
    $resolved = Resolve-Path -LiteralPath $Candidate
    $gamsExe = Join-Path $resolved "gams.exe"
    if (-not (Test-Path -LiteralPath $gamsExe)) {
      throw "No gams.exe found in $resolved"
    }
    return $resolved.Path
  }

  $cmd = Get-Command gams -ErrorAction SilentlyContinue
  if ($cmd) {
    return Split-Path -Parent $cmd.Source
  }

  $commonRoots = @(
    "C:\GAMS",
    "C:\Program Files\GAMS",
    "C:\Program Files (x86)\GAMS"
  )

  foreach ($root in $commonRoots) {
    if (Test-Path -LiteralPath $root) {
      $hit = Get-ChildItem -LiteralPath $root -Recurse -Filter gams.exe -ErrorAction SilentlyContinue |
        Select-Object -First 1
      if ($hit) {
        return $hit.DirectoryName
      }
    }
  }

  throw "Could not find GAMS. Re-run with -GamsSystemDir 'C:\path\to\GAMS\...\'."
}

function Invoke-Python {
  param([string]$Command)

  if ($Python -match "\s") {
    $parts = $Python -split "\s+"
    & $parts[0] $parts[1..($parts.Length - 1)] $Command
  } else {
    & $Python $Command
  }
}

$gamsDir = Resolve-GamsSystemDir -Candidate $GamsSystemDir
$gamsExe = Join-Path $gamsDir "gams.exe"

Write-Host "GAMS system directory: $gamsDir"
Write-Host "GAMS executable: $gamsExe"

if (-not $GamsVersion) {
  $audit = & $gamsExe audit 2>&1 | Out-String
  if ($audit -match "GAMSX\s+([0-9]+\.[0-9]+\.[0-9]+)") {
    $GamsVersion = $Matches[1]
  } else {
    Write-Host $audit
    throw "Could not parse GAMS version from 'gams audit'. Re-run with -GamsVersion 'xx.y.z'."
  }
}

Write-Host "GAMS version: $GamsVersion"

$envFull = Join-Path (Get-Location) $EnvPath
if (-not (Test-Path -LiteralPath $envFull)) {
  Write-Host "Creating Python venv: $envFull"
  if ($Python -match "\s") {
    $parts = $Python -split "\s+"
    & $parts[0] $parts[1..($parts.Length - 1)] -m venv $envFull
  } else {
    & $Python -m venv $envFull
  }
}

$venvPython = Join-Path $envFull "Scripts\python.exe"
if (-not (Test-Path -LiteralPath $venvPython)) {
  throw "Python venv was not created correctly: $venvPython"
}

& $venvPython -m pip install --upgrade pip
& $venvPython -m pip install "gamsapi[control,transfer,magic]==$GamsVersion"

$testScript = Join-Path (Get-Location) "tools\gams_smoke_test.py"
& $venvPython $testScript --gams-system-dir $gamsDir

Write-Host ""
Write-Host "Done."
Write-Host "Activate with:"
Write-Host "  .\$EnvPath\Scripts\Activate.ps1"
Write-Host "Run smoke test again with:"
Write-Host "  .\$EnvPath\Scripts\python.exe tools\gams_smoke_test.py --gams-system-dir `"$gamsDir`""
