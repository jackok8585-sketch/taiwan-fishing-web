# 載入頁美術交接

2026-11-20，ChatGPT／Codex。這次只調整獨立網站的載入頁，沒有重新打包 Unity，也沒有修改遊戲原始碼或地形。

## 改動

- `index.html`：以現有港口風景和遊戲標誌呈現載入畫面；暖白進度卡、海藍進度條、實際載入百分比；支援手機直向、橫向與安全區。
- `loading/harbor.png`、`loading/logo.png`：沿用專案現有的原創主畫面素材，沒有額外字型或外部服務請求。
- 載入失敗時顯示重試按鈕，詳細訊息放在「查看錯誤資訊」。保留加入主畫面與全螢幕設定。
- Unity 的 data/framework/wasm URL、成品 Build、manifest、圖示與 vercel.json 都維持原狀。沒有增加最低等待時間，也沒有在正式頁面加入模擬進度。

## 驗證

- 以現有 Unity WebGL 成品在本機瀏覽器完成啟動，載入頁正常消失並進入登入畫面。
- 瀏覽器沒有紅色錯誤。有成品既有的 URP FSR shader 不支援警告；本次沒有修改成品。
- 390×844、844×390、320×568 的瀏覽器尺寸檢查；另外用獨立測試載入器檢查固定進度和載入失敗狀態。測試頁與模擬載入器只在本機工作資料夾，不隨網站交付。
- 真實 iPhone Safari、主畫面捷徑與安全區仍需使用者實機確認。
- Blender 5.2.4 已唯讀開啟既有八斗子 `.blend`：63 個物件／網格、66 個材質；正常退出，沒有存檔。背景模式在隔離環境的 Metal 初始化會當掉，改在一般環境唯讀執行後正常。

## 給 Claude

合併網站 repo 的 `codex/loading-screen-polish` 分支即可套用載入頁。請保留當時 main 最新的 `Build/` 成品；本分支沒有改動 Build。之後正常打包並執行 `update.sh`，不會覆蓋這次的載入頁或 `loading/` 圖片。

Unity 主專案的 HANDOFF 目前由 Claude 使用，因此本次沒有改它的工作狀態，也沒有移動或覆蓋任何八斗子原始檔。

Blender 後續可沿用 `Art/Source/Badouzi/build_badouzi.py` 與 `Badouzi_v1.blend`，由 Codex 修整模型、材質與場景細節；Claude 維護水域、碰撞和遊戲接入。每次交接一批檔案，避免同時儲存同一份 Blender 檔。改岸線或範圍仍須沿用 `build_layout.py` 的資料流程。
