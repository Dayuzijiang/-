$ErrorActionPreference = "Stop"

$target = "C:\Users\admin\.codex\skills\wechat-viral-writer"
$source = Join-Path $PSScriptRoot "skills\wechat-viral-writer"

New-Item -ItemType Directory -Path $target -Force | Out-Null
New-Item -ItemType Directory -Path (Join-Path $target "references") -Force | Out-Null
New-Item -ItemType Directory -Path (Join-Path $target "agents") -Force | Out-Null

Copy-Item -LiteralPath (Join-Path $source "SKILL.md") -Destination (Join-Path $target "SKILL.md") -Force
Copy-Item -LiteralPath (Join-Path $source "references\prompt-framework.md") -Destination (Join-Path $target "references\prompt-framework.md") -Force
Copy-Item -LiteralPath (Join-Path $source "agents\openai.yaml") -Destination (Join-Path $target "agents\openai.yaml") -Force

Write-Host ""
Write-Host "Installed wechat-viral-writer skill to $target"
Write-Host "Press Enter to continue..."
[void][System.Console]::ReadLine()
