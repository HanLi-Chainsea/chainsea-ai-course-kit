# AI 應用實戰課｜學員包(U12 – U14)

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/HanLi-Chainsea/chainsea-ai-course-kit)

## 🚀 線上一鍵開始(不用裝任何東西)

1. 按上面的 **Open in GitHub Codespaces** 徽章 → 等它幫你開好雲端環境(第一次約一兩分鐘)。
2. 開好後,直接打開 [`m12-crew-starter/M12_課1_教學筆記本.ipynb`](./m12-crew-starter/M12_課1_教學筆記本.ipynb),**從上往下一格一格按 ▶**。
3. 還沒設金鑰也能跑、能學;設好金鑰(見下方)重跑那一格,就會看到真的 AI 三角色輸出。

> 🛟 筆記本第一格就卡(要你裝 ipykernel)?看 [`如何跑筆記本.md`](./如何跑筆記本.md) — 終端機跑 `bash setup.sh`(一行解決 externally-managed 卡關)。

> M13 做網站時,你會在同一個環境 `cd m13-astro-blog && npm install && npm run dev` —— 親手**打開一個前端專案**。

---

這是給**學員**用的一份完整教材包。配合簡報,照著做,你會做出三個能用、能上線的成果:

| 模組 | 你會做出 | 資料夾 | 照著做的手冊 |
|---|---|---|---|
| **M12** AI 營運決策助理 | 一個會讀資料、抓異常、給建議的助理 | [`m12-crew-starter/`](./m12-crew-starter/) | [學員手冊](./m12-crew-starter/學員手冊.md) |
| **M13** AI 個人品牌網站 | 一個公開上線、能放履歷的網站 | [`m13-astro-blog/`](./m13-astro-blog/) | [學員手冊](./m13-astro-blog/學員手冊.md) |
| **M14** AI 營運實戰演練 | 把上面兩個當公司營運、處理突發狀況 | [`m14-ops-drill/`](./m14-ops-drill/) | [演練卡 00–06](./m14-ops-drill/) |

> 不想安裝、只想先看成品長怎樣?直接打開 [`preview.html`](./preview.html)(零安裝)。
> 想看一段示範?看 [`示範短片-M13課1.mp4`](./示範短片-M13課1.mp4)。

---

## 怎麼開始(兩條路,先看簡報再動手)

### 1. 打開簡報(它本身就是一個「前端專案」,順便體驗一次)

```bash
cd slides
npm install     # 第一次裝套件,跑一下下
npm run dev      # 打開終端機顯示的網址(通常 http://localhost:5173)
```

打開後是課程的投影片列表,點任一堂進去,用 **← →** 翻頁,右上角 **Present** 全畫面播放。

> 你剛剛做的「`npm install` → `npm run dev` → 瀏覽器看到畫面」,就是**打開一個前端專案**的標準動作。M13 做網站時,你會再做一次一模一樣的。

### 2. 動手做(每個模組照著手冊貼 prompt)

進對應資料夾,打開 `學員手冊.md`,每個案例都是同一個節奏:

> **目標 → 複製這段貼上 → ✓ 你應該看到 → 卡住怎麼辦**

prompt 都是純文字,直接複製貼到對話框就好。

---

## 你只要看三個地方

整堂課的所有專案,你只要看:**左邊檔案樹**、跟 AI 講話的**對話框**、跑程式的**終端機**。其他都先忽略。

## 金鑰怎麼放(重要)

- 金鑰一律放 **Codespaces Secrets**,或把各模組的 `.env.example` 複製成 `.env` 再填。
- **絕對不要**把金鑰貼進程式碼、對話框,或 commit 上去。
- 這份包裡沒有任何金鑰,你要用自己的(課堂老師會帶你設)。

## 這份包裝了什麼

```
slides/            課程簡報(open-slide 前端專案,可 npm run dev 開起來)
m12-crew-starter/  M12 助理 starter + 學員手冊
m13-astro-blog/    M13 網站 starter + 學員手冊
m14-ops-drill/     M14 演練教具(00–06 卡片)
preview.html       零安裝成品預覽
```

加油,你會做得出來的。
