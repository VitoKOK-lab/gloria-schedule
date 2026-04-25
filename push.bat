@echo off
chcp 65001 >nul
echo === 推送班表更新到 GitHub ===
cd /d "%~dp0"
git add -A
set /p msg=請輸入更新說明（例如：更新4月班表）：
git commit -m "%msg%"
git push origin main
echo.
echo === 完成！同事可以重新整理頁面看到最新班表 ===
pause
