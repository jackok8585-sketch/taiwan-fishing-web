# 釣魚人生：網頁版成品

這個資料夾只放「打包好的網頁版」，給 Vercel 發佈用。原始碼在另一個專案（TaiwanFishing）。

- `index.html`：載入頁（含加入主畫面後全螢幕的設定）
- `Build/`：Unity 打包出來的遊戲檔
- `update.sh`：Unity 重新打包後執行，會把新檔複製進來並存檔；再用 GitHub Desktop 按 Push，網站就會更新

## 載入畫面（2026-11-25）

五角色輕像素合照、字標置中、橫直式背景自動切換；真實載入進度沿用原版。接手請讀 `LOADING_FIVE_FRIENDS_HANDOFF.md`。

## 誰可以更新網站（2026-11-26）

Claude、Codex 都可以推送並自行合併已授權的網站修改到 `main`，不必互等批准；Vercel 會自動更新正式網址：https://taiwan-fishing-web.vercel.app/ 。協作細節見 `AGENTS.md`，仍然一次只有一個 AI 修改。

Unity 內容更新：先拉取最新 `main`，重新打包後執行 `update.sh "說明"`，再 push。只改載入頁／圖片時直接提交相關檔案即可，不要帶回舊的 Build。完成後必須在正式網址驗收。
