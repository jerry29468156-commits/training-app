# Training App v6.1 - 組間休息版

## 更新內容
- 每一組新增 `休息秒數` 欄位。
- 休息秒數存入 `sets[].restSec`。
- 不需要重新建立 Supabase SQL。
- CSV 匯出新增每組休息秒數與平均休息秒。
- Supabase 手動同步照常使用，因為 `sets` 是 JSONB。

## 更新 GitHub Pages
上傳並覆蓋：`index.html`, `style.css`, `app.js`, `manifest.json`, `service-worker.js`, `icon-192.png`, `icon-512.png`。

## 更新前建議
先在 App 的「歷史」頁匯出 JSON 備份。
