@echo off
echo FORCE REBUILD - Cleaning old docs first...

if exist docs (
  echo Removing old docs folder...
  rmdir /s /q docs
)

echo Building fresh production site...
cd hugo_site

echo Installing npm dependencies...
call npm install

echo Building CSS for production...
call npm run build-css-prod

echo Building Hugo site to docs folder...
cd ..\hugo_bin
hugo.exe --config ..\hugo_site\hugo_build.toml --minify --gc --destination ..\docs

echo Build complete! Fresh files are in docs/ folder
echo Now commit and push to GitHub
pause
