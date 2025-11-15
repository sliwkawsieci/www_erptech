@echo off
echo Simple Hugo build test...
cd hugo_site
..\hugo_bin\hugo.exe --config hugo.toml --destination ../docs-test
echo Build completed. Check docs-test folder:
dir ../docs-test /b
pause
