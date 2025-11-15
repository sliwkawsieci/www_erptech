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
if %ERRORLEVEL% NEQ 0 (
  echo ERROR: npm install failed!
  pause
  exit /b 1
)

echo Building CSS for production...
call npm run build-css-prod
if %ERRORLEVEL% NEQ 0 (
  echo ERROR: CSS build failed!
  pause
  exit /b 1
)

echo Building Hugo site to docs folder...
cd ..\hugo_bin
echo Running: hugo.exe --config ..\hugo_site\hugo_build.toml --minify --gc --destination ..\docs
hugo.exe --config ..\hugo_site\hugo_build.toml --minify --gc --destination ..\docs
if %ERRORLEVEL% NEQ 0 (
  echo ERROR: Hugo build failed!
  echo Check configuration file: ..\hugo_site\hugo_build.toml
  pause
  exit /b 1
)

echo Checking if build succeeded...
if not exist ..\docs\index.html (
  echo ERROR: index.html was not created!
  echo Hugo build completed but index.html is missing
  pause
  exit /b 1
)

echo Build complete! Fresh files are in docs/ folder
echo Files created:
dir ..\docs\ /b
echo Now commit and push to GitHub
pause
