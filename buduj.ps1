# ERPtech Build Script
# Buduje CSS (Tailwind) i Hugo site do produkcji

Write-Host "🚀 Rozpoczynam build ERPtech..." -ForegroundColor Green

# 1. Build CSS w katalogu hugo_site
Write-Host "📦 Buduję CSS z Tailwind..." -ForegroundColor Yellow
Set-Location .\hugo_site
try {
    & node .\node_modules\tailwindcss\lib\cli.js -i .\assets\css\main.css -o .\static\css\styles.css --minify
    if ($LASTEXITCODE -ne 0) {
        throw "Błąd podczas budowania CSS"
    }
    Write-Host "✅ CSS zbudowane pomyślnie" -ForegroundColor Green
} catch {
    Write-Error "❌ Błąd podczas budowania CSS: $_"
    exit 1
}

# 2. Wróć do katalogu głównego i zbuduj Hugo
Set-Location ..
Write-Host "🏗️ Buduję Hugo site..." -ForegroundColor Yellow
try {
    & .\hugo_bin\hugo.exe --source .\hugo_site --config hugo.toml --minify --gc --destination .\docs
    if ($LASTEXITCODE -ne 0) {
        throw "Błąd podczas budowania Hugo"
    }
    Write-Host "✅ Hugo site zbudowane pomyślnie" -ForegroundColor Green
} catch {
    Write-Error "❌ Błąd podczas budowania Hugo: $_"
    exit 1
}

Write-Host ""
Write-Host "🎉 Build zakończony sukcesem!" -ForegroundColor Green
Write-Host "📁 Pliki gotowe w katalogu: .\docs" -ForegroundColor Cyan
Write-Host "🌐 Lokalny preview: .\hugo_site\docs\index.html lub hugo server" -ForegroundColor Cyan
