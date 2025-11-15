@echo off
echo Building production site for GitHub Pages...

cd hugo_site

echo Installing npm dependencies...
call npm install

echo Building CSS for production...
call npm run build-css-prod

echo Building Hugo site to docs folder...
cd ..\hugo_bin
hugo.exe --config ..\hugo_site\hugo_build.toml --minify --gc --destination ..\docs

echo Build complete! Files are in docs/ folder
echo You can now commit and push to GitHub
pause
