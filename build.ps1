#!/usr/bin/env pwsh
# Build script for ERPtech Hugo site

Write-Host "🎨 Building CSS with Tailwind..." -ForegroundColor Cyan

# Build CSS
Push-Location hugo_site
try {
    npx tailwindcss -i ./assets/css/main.css -o ./static/css/styles.css --minify
} finally {
    Pop-Location
}

if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ CSS build successful!" -ForegroundColor Green
} else {
    Write-Host "⚠️  CSS build failed, continuing with existing CSS..." -ForegroundColor Yellow
}

Write-Host "🏗️  Building Hugo site..." -ForegroundColor Cyan

# Build Hugo site
& ".\hugo_bin\hugo.exe" --source hugo_site --minify

if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ Hugo build successful!" -ForegroundColor Green
    Write-Host "📂 Output: hugo_site\public\" -ForegroundColor Cyan
    Write-Host "🚀 Ready to deploy!" -ForegroundColor Green
} else {
    Write-Host "❌ Hugo build failed!" -ForegroundColor Red
    exit 1
}
