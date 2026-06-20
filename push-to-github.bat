@echo off
chcp 65001 >nul
cd /d "%~dp0"

echo === local-restaurant-newmedia GitHub Upload ===
echo.

gh auth status >nul 2>&1
if not errorlevel 1 (
  echo [方式A] gh 已登录，尝试 git push...
  gh repo view dx1302001/cursor-skill-local-restaurant-newmedia >nul 2>&1
  if errorlevel 1 (
    gh repo create cursor-skill-local-restaurant-newmedia --public --source=. --remote=origin --push --description "Cursor skill: local restaurant multi-platform new media copywriting"
  ) else (
    git push -u origin master 2>nul || git push -u origin main
  )
  if not errorlevel 1 goto :done
  echo git push 失败，改用 API 上传...
)

echo [方式B] 通过 api.github.com 上传（无需 gh 登录）...
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0github-api-push.ps1" -RepoPath "%~dp0" -RepoName "cursor-skill-local-restaurant-newmedia" -Description "Cursor skill: local restaurant multi-platform new media copywriting"
if errorlevel 1 (
  echo.
  echo 上传失败。若 Token 过期，请到 https://github.com/settings/tokens 生成新 Token，
  echo 然后执行: echo 你的Token ^| gh auth login --with-token
  pause
  exit /b 1
)

:done
echo.
echo 完成: https://github.com/dx1302001/cursor-skill-local-restaurant-newmedia
pause
