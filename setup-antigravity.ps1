# AntiGravity Setup & Linker (Windows PowerShell)
# Automatically copies workflows and rules to a target project.

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$ProjectRoot = (Get-Item $ScriptDir).Parent.Parent.FullName
$SourceAgent = Join-Path $ProjectRoot ".agent"

Write-Host "------------------------------------------------" -ForegroundColor Cyan
Write-Host "   AntiGravity Template Linker (Windows)        " -ForegroundColor Cyan
Write-Host "------------------------------------------------" -ForegroundColor Cyan

# 1. Ask for Target Project Path
Write-Host "Enter the absolute path of the project where you want to apply AntiGravity:"
$TargetProject = Read-Host

# Remove quotes if user dragged and dropped folder
$TargetProject = $TargetProject.Replace('"', '').Trim()

if (-not (Test-Path $TargetProject)) {
    Write-Host "❌ Error: Target directory does not exist: $TargetProject" -ForegroundColor Red
    Pause
    Exit
}

$TargetAgent = Join-Path $TargetProject ".agent"

# 2. Sync Files
Write-Host "Syncing AntiGravity assets..."
Write-Host "Source: $SourceAgent"
Write-Host "Target: $TargetAgent"

# Create directories if they don't exist
New-Item -ItemType Directory -Force -Path (Join-Path $TargetAgent "rules") | Out-Null
New-Item -ItemType Directory -Force -Path (Join-Path $TargetAgent "workflows") | Out-Null

# Copy rules and workflows
Copy-Item -Path (Join-Path $SourceAgent "rules\*") -Destination (Join-Path $TargetAgent "rules") -Recurse -Force
Copy-Item -Path (Join-Path $SourceAgent "workflows\*") -Destination (Join-Path $TargetAgent "workflows") -Recurse -Force

# Copy .cursorrules to target root if it exists
$CursorRulesPath = Join-Path $ProjectRoot ".cursorrules"
if (Test-Path $CursorRulesPath) {
    Copy-Item -Path $CursorRulesPath -Destination $TargetProject -Force
    Write-Host "✅ Copied .cursorrules to target project root." -ForegroundColor Green
}

Write-Host "------------------------------------------------" -ForegroundColor Cyan
Write-Host "✨ Setup Complete!" -ForegroundColor Green
Write-Host "AntiGravity workflows and rules have been copied to $TargetProject"
Write-Host "Restart Cursor or reload the window to see changes."
Write-Host "------------------------------------------------" -ForegroundColor Cyan
Pause
