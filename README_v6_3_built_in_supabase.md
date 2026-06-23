# Training App v6.3 - 內建 Supabase 設定

## 更新內容
- 新增 `config.js`，內建 Supabase Project URL 與 anon public key。
- `index.html` 會在 `app.js` 前載入 `config.js`。
- 雲端頁不再需要手動輸入 Supabase URL / anon key。
- 日常只需要輸入 Email / Password 登入。

## 需要上傳覆蓋到 GitHub 的檔案
- index.html
- config.js
- service-worker.js

若尚未更新 v6.2 手機排版，也請一併上傳新版 style.css。

## 安全提醒
本檔案只放 Supabase anon public key；不要放 service_role / secret key。
