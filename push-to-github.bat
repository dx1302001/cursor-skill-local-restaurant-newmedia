@echo off
chcp 65001 >nul
cd /d "%~dp0"

echo === GitHub 上传脚本 ===
echo.

gh auth status >nul 2>&1
if errorlevel 1 (
  echo [1/3] 请先登录 GitHub...
  gh auth login
)

echo [2/3] 创建仓库并推送（若仓库已存在则仅推送）...
gh repo view dx1302001/cursor-skill-local-restaurant-newmedia >nul 2>&1
if errorlevel 1 (
  gh repo create cursor-skill-local-restaurant-newmedia --public --source=. --remote=origin --push --description "Cursor skill: local restaurant multi-platform new media copywriting"
) else (
  git push -u origin master
)

echo.
echo [3/3] 完成。仓库地址：
echo https://github.com/dx1302001/cursor-skill-local-restaurant-newmedia
pause
