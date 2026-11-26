# 網頁版協作與發佈規則

## 權限（使用者 2026-11-26 授權）

- Claude 與 Codex 都能推送這個 GitHub repo，並自行合併或推送已授權的網站修改到 `main`；不必等待另一個 AI 核准。
- `main` 推送後，由現有 Vercel Git 整合自動發佈正式網站：https://taiwan-fishing-web.vercel.app/ 。
- 這是公開的成品庫。私人 Unity 原始碼留在 `TaiwanFishing`，不要放進這裡，不要改私人 repo 的可見性。

## 開始工作

1. 先讀 `README.md`、最新載入頁交接文件，以及私人主專案 `docs/HANDOFF.md` 的最新狀態。
2. 一次只有一個 AI 修改；在主專案交接紀錄標記進行中。先確認工作目錄乾淨，再 fetch／pull 最新 main，檢查既有分支。
3. 保留最新 `Build/`。只改載入頁時，不重打包 Unity、不執行舊的 update.sh、不帶回舊 Build。
4. 可先用工作分支檢查，再自行合併到 main；禁止 force push、改寫歷史或任意刪檔。

## 發佈與驗收

1. commit 訊息使用繁體中文，Git 作者信箱需對應有 Vercel 權限的 GitHub 帳號（可用 GitHub noreply 信箱），不要使用 `.local` 信箱觸發正式部署。
2. 推到 main，等 Vercel 部署成功；用正式網址確認新載入圖、真正的 Unity 進度、遊戲能操作及 Console 錯誤，另檢查 manifest 和圖示。
3. 確認 Build 檔載入正常；有解析錯誤時才依實際壓縮格式修正標頭。
4. 在主專案更新進度與交接紀錄，記下公開網址、commit、部署與驗收結果，再將狀態改回可接手。
5. 不升級付費方案、不綁信用卡、不變更既有登入／安全保護。
