#!/bin/sh
# 把 Unity 最新打包的網頁版（../Web/Build）複製進來並存檔。之後在 GitHub Desktop 對這個資料夾按 Push，Vercel 就會自動更新網站。
set -e
cd "$(dirname "$0")"
cp ../Web/Build/Web.* Build/
git add -A
git commit -m "${1:-更新網頁版}" || echo "沒有變更"
