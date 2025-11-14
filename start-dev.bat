@echo off
echo Starting Hugo development server...
cd hugo_site
..\hugo_bin\hugo.exe server --buildDrafts
pause
