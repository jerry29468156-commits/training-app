# Training App v6 - Supabase 手動同步版

## 使用步驟
1. 到 Supabase 建立新 Project。
2. 進入 SQL Editor，貼上 `supabase_schema.sql` 並執行。
3. 到 Project Settings > API，複製 Project URL 與 anon public key。
4. 部署本資料夾到 GitHub Pages / Netlify / Vercel。
5. 開啟 App > 雲端頁，填入 Supabase URL / anon key / Email / Password。
6. 第一次使用按「註冊」，若 Supabase 要求驗證信，先完成 Email 驗證。
7. 登入後：
   - 手機訓練後按「上傳本機到雲端」
   - 電腦開啟後按「從雲端載入並覆蓋本機」

## 注意
- localStorage 仍然是第一層儲存。
- 上傳會把本機資料 upsert 到 Supabase。
- 下載會用雲端資料覆蓋本機，請先匯出 JSON 備份。
