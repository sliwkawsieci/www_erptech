#!/usr/bin/env pwsh
# Build script for ERPtech Hugo site

Write-Host "🎨 Building CSS..." -ForegroundColor Cyan

# Build CSS
Push-Location hugo_site
try {
    & "C:\Program Files\nodejs\npx.cmd" tailwindcss -i ./assets/css/main.css -o ./static/css/styles.css --minify
} finally {
    Pop-Location
}

if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ CSS build successful!" -ForegroundColor Green
} else {
    Write-Host "❌ CSS build failed!" -ForegroundColor Red
    exit 1
}

Write-Host "🏗️  Building Hugo site..." -ForegroundColor Cyan

# Build Hugo site
& ".\hugo_bin\hugo.exe" --source hugo_site

if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ Hugo build successful!" -ForegroundColor Green
    
    Write-Host "📦 Copying files to root..." -ForegroundColor Cyan
    
    # Copy generated files to root
    Copy-Item -Path "hugo_site\public\*" -Destination "." -Recurse -Force
    
    Write-Host "✅ Site deployed to root directory!" -ForegroundColor Green
    Write-Host "📂 You can now commit and push changes to deploy." -ForegroundColor Yellow
} else {
    Write-Host "❌ Hugo build failed!" -ForegroundColor Red
    exit 1
}
