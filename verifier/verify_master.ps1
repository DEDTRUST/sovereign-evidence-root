param([string]$OutDir = "")
$ErrorActionPreference = "Continue"
if ([string]::IsNullOrWhiteSpace($OutDir)) {
  $OutDir = Join-Path (Get-Location).Path "SSV-MASTER-EVIDENCE"
}
function Get-Sha256dHex([string]$Text) {
  $sha = [System.Security.Cryptography.SHA256]::Create()
  try {
    $b = [System.Text.Encoding]::UTF8.GetBytes($Text)
    $inner = $sha.ComputeHash($b)
    $outer = $sha.ComputeHash($inner)
    return ([System.BitConverter]::ToString($outer)).Replace("-", "").ToLowerInvariant()
  } finally { $sha.Dispose() }
}
$expected = "5e7cc7e501de6fd41e1e0eee7d7aa6fe40a7f7f928099fb1549cf318a3c42407"
$rec = Join-Path $OutDir "MASTER_SOVEREIGN_EVIDENCE_HARDENED.record.txt"
if (-not (Test-Path $rec)) { Write-Host "MISSING $rec"; exit 1 }
$raw = [System.IO.File]::ReadAllText($rec)
if ($raw -match "MASTER_SOVEREIGN_EVIDENCE_ROOT ([a-f0-9]{64})") {
  $got = $Matches[1]
  if ($got -eq $expected) {
    Write-Host "MASTER MATCH $expected"
    Write-Host "THE CODE IS THE HARDWARE"
    exit 0
  } else {
    Write-Host "MASTER MISMATCH expected=$expected got=$got"
    exit 1
  }
}
Write-Host "NO MASTER ROOT FOUND"
exit 1
