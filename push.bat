@echo off
chcp 65001 >nul
cd /d "%~dp0"
git add -A
git diff --cached --quiet
if %errorlevel%==0 (
  echo 沒有新的變更，不需要提交。
  pause
  exit /b
)
for /f "skip=1 tokens=1-3 delims=-" %%a in ('wmic os get localDateTime') do if not defined DT set DT=%%a
set YM=%DT:~0,6%
set HMS=%DT:~8,6%
git commit -m "更新班表 %YM%-%HMS%"
git push origin main
echo.
echo === 完成！約 1-2 分鐘後員工可看到最新班表 ===
pause
