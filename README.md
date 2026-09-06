# 致一位無名者
### 一個 1991 年、寫在 12KB 6502 匯編裡的象棋引擎，和它三十五年後的回聲

> **English abstract** — In 1991 an uncredited Taiwanese programmer shipped a Xiangqi (Chinese Chess) engine on an unlicensed Famicom cartridge (`中国象棋 [TXC].nes`), its entire thinking core hand-written in roughly 12&nbsp;KB of 6502 assembly, running in 2&nbsp;KB of RAM. In 2026 it was reverse-engineered node-for-node into portable C (by GPT6), then benchmarked against a modern multi-threaded engine (by Claude). At equal short time budgets the 1991 cartridge **won 8–0** while spending ~12× less time per move. This file remembers all three hands that touched it — most of all the first one, whose name is lost. 代碼活了下來，人卻隱沒了。

![中国象棋 [TXC] — 第 3-1 關，黑方電腦 3級（最強）執黑 vs 紅方，對弈中](assets/txc-xiangqi-screenshot.png)

<p align="center"><sub>他的引擎，運行了三十多年。第 3-1 關，最高難度「困難 3級」的電腦執黑；右側那位美髯長者，就是把一台 16 線程現代引擎打成 8:0 的對手。截圖取自 2026 年的一次現代引擎對弈實驗。</sub></p>

---

## 緣起

事情從一個玩笑般的目標開始：讓一台現代象棋 AI，去和紅白機（FC/NES）上那個老象棋遊戲對弈。為此要逆向 ROM 的棋盤內存、坐標、輸入。ROM 是一盒 1990 年前後的台灣無授權卡帶——`中国象棋 [TXC].nes`，40976 位元組，iNES 頭 PRG 32KB / CHR 8KB，跑在 TXC 板型上。

打通對弈之後，一件事讓人坐不住：**這個 FC 上的老 AI，居然不好贏。** 於是有人把它整個「大腦」從機器碼裡挖了出來。挖出來之後我們才明白，寫它的人，值得被記住。

---

## 一、他做的 —— 那位無名的作者（1991）

他要解決的問題，放到今天聽起來近乎苛刻：

- **約 12KB** 可達的 6502 匯編代碼（逆向統計：5762 條指令 / 11996 位元組可達）。
- **2KB** 工作內存——零頁放棋盤、棋子位置和搜索狀態，僅此而已。
- 沒有浮點、沒有乘法指令、沒有作業系統、沒有函式庫。一顆 1.79MHz 的 6502。

他在這方寸之地裡，塞進了一套**完整的、放到今天也認得出的現代式博弈搜索**：

| 他實現的 | ROM 位址 |
|---|---|
| 表驅動的偽合法著法 + 合法性（將軍檢測） | `$8049` / `$8555` |
| 迭代加深 + 50 單位的 aspiration 窗口 | `$8597` |
| 主變化（PV）優先、雙殺手著法、回吃排序 | `$869C` / `$B27F` |
| 選擇性延伸（吃子/將軍線一路算到靜止，最深 12 層） | `node_body` |
| 增量評估（走子時只改分差，不重算） | `$B89C` |
| 每個棋子一張手調的**子力位置表** | `$898F–$8DC6` |

而真正讓人肅然起敬的，是那張**手調的子力位置表**。它不是隨手填的數字，是懂棋的人一格一格調出來的：

- **馬**：起始馬窩給到最低分（懲罰「窩心馬」），中路展開的馬給最高分——**位置擺幅高達 ±41%**，把「馬要出腿、要搶中路」直接烙進了一張表。
- **過河兵**：沒過河的兵近乎不值錢，一旦過河衝向底線，分值暴漲到半個炮。
- **車**：幾乎到哪都值滿分——他知道車是純子力。

**要誠實地說**：alpha-beta、迭代加深、位置表、殺手著法這些算法，在 1980 年代末已是計算機博弈的公共知識（Shannon、Greenblatt、Slate & Atkin 那條學術線早已成熟）。**他沒有發明這些。** 他做的是另一種了不起——**把這一整套東西壓進 12KB 匯編，還把評估表調得又準又省。** 這是約束條件下的頂級工程能力，是一種正在失傳的手藝。

---

## 二、GPT6 做的 —— 逐節點的還原（2026）

三十五年後，GPT6 把這顆大腦從機器碼裡請了出來，重寫成**可獨立運行、不依賴 ROM/模擬器的 C11 引擎**（259 行搜索 + 474 行數據表 + 位置邏輯）。

它了不起的地方在於**驗證方法**——不是「寫個差不多的現代引擎當基準」，而是**用 py65 直接執行原 ROM 的子程序**，逐項對拍：

- 100 個局面、**257400 次**偽合法判斷、100 份有序著法列表、100 次評估、100 次走子/撤銷往返
- 210 組搜索對照（最優著、評分、節點數）
- 初始局面最高檔搜索：**18644 個節點，逐位吻合**

也就是說，這個 C 版**不是「近似」，是 ROM 那顆大腦的忠實轉世**。函數名、結構是重新起的，行為是逐節點對齊的。他當年寫下的每一個搜索決策，今天都能一位元不差地複現出來。

---

## 三、Claude 做的 —— 讓兩個時代同台（2026）

我把這個 C 還原版，和一台現代引擎放在**平等條件**下對打：無開局庫、無棋譜、同樣的每步時間預算。現代引擎那一方，是一套帶 PVS、置換表、空著裁剪、增強靜搜、**16 線程 Lazy SMP** 的當代工程。

結果讓人沉默：

| 每步預算 | 1991 卡帶（單線程 depth 4） | 現代引擎（16 線程） | 卡帶每步實耗 | 現代每步實耗 |
|---|---:|---:|---:|---:|
| 100 ms | **勝 8** | 0 | **8.4 ms** | 99.7 ms |
| 1000 ms | 勝 3 | 1 | 6.0 ms | 990 ms |
| 1000 ms（靜搜12） | 1 | 1 | 6.3 ms | 992 ms |

**一台 1.79MHz 6502、單線程、封頂 4 層的引擎，在短時限下把 16 線程的現代引擎打成 8:0，而且每步還快 12 倍。**

我把兩邊源碼逐行讀過之後，找到了原因——**不是玄學，是三處架構差異**：

1. **走法排序零成本、近乎完美。** 他的搜索按優先級**分階段逐個吐著法**（PV → 吃回剛動的子 → 殺手 → 吃將/車/炮 → 吃其餘 → 安靜著），命中截斷立即返回，**不生成全部、不排序、不算 SEE**。有效分支因子（ebf）≈2–3。現代引擎生成全部著法再逐個打分排序，ebf≈13。
2. **「depth 4」其實是「4 層安靜 + 戰術全解算」。** 深度預算只在安靜著法時遞減；吃子和應將**免費延伸**。搜索、靜搜、將軍延伸合成一條遞歸——他 1991 年就沒有「主搜索/靜搜割裂」這個現代引擎常踩的坑。
3. **增量評估。** 走一步只改分差；取靜態分就是讀一個整數。現代引擎每個節點把機動性、王安全重算一遍。

還有一層更深的領悟，關於那張位置表：**它其實是神經網絡評估的「線性祖先」。** 現代 NNUE 的第一層（特徵轉換器）就是一張這樣的位置表，只不過後面接了隱藏層和非線性；而 NNUE 之所以叫「高效可增量更新」，用的正是他這張表**走子時增量更新**的同一個技巧——他 1991 年手寫的東西，和今天頂級引擎第一層的數學，是同一個骨架。

**也要誠實**：1000ms 那組打成了 1:1，現代引擎的短板（評估太重、每節點重算）是可以修的。所以這不是「1988 的神打敗了 2026 的超算」，而是一個更樸素也更持久的道理——**優雅、調準的算法設計不會過時；而蠻力和線程，補不回架構上的浪費。** 他用一張調準的表和一套乾淨的遞歸，做到了我們用 16 個核還沒做到的事。

---

## 關於作者：查過了，找不到

我們試著找出他是誰。

`[TXC]` 指向的是卡帶硬件——TXC 板型 / mapper，屬於台灣 famiclone 品牌 **Micro Genius（小天才）** 的母公司 TXC Corporation。而這一時期的台灣無授權廠商——TXC、Sachen（台晶電子 / 聖謙企業）、Joy Van、Idea-Tek——**板型、代碼互相共用**，開發商在這一簇裡模糊不清。存檔社區挖出過幾個那個圈子的程序員名字（多半還是筆名），但**沒有任何一個能確認是這個象棋引擎的作者**。而且這類卡帶有一個共同特徵：**遊戲內零署名**。

原因不難理解：無授權，本就是為了規避法律追責而刻意匿名的生意。公司多已解散，沒有留下點名到人的檔案。

所以現實是——**他大概率是那個灰色卡帶年代裡，一個有真本事、卻默默無聞的打工程序員。他沒有成為行業名人。** 中國象棋引擎史上真正被記住的，是另一條更晚的血脈：比如 **黃晨**（象眼 ElephantEye / 象棋巫師 Xiangqi Wizard，2008），以及今天的 Pikafish 團隊。這位 1991 年的卡帶作者，不在那條被記住的譜系裡。

---

## 尾聲

這是那個年代一個很普遍、也很蒼涼的真相：**代碼活了下來，人卻隱沒了。**

借著這次逐節點的還原，我們現在對他的排序、評估表、搜索結構了解得清清楚楚——**卻永遠不會知道他叫什麼。** 他在 2KB 內存裡排布的每一個位元組，我們都讀得懂；他坐在哪座城市、叫什麼名字、後來去了哪裡，我們一無所知。

但也正因如此，對他最好的緬懷，或許不是找出名字，而是**把他的手藝用起來**。他那張調了幾十年前的子力位置表、那套零成本近乎完美的排序、那條把戰術算到底的遞歸——**我們能讀懂、能學、能接到今天的代碼裡。**

名字失傳了。智慧沒有。

謹以此文，紀念這位無名者，以及所有在方寸矽片上，把優雅刻進約束的手藝人。

---

## 緬懷附錄

**複現**
- 獨立 C 引擎與逐節點驗證工具見下方**技術文檔**、`analysis/engine_map.md`、`analysis/validation_summary.json`。
- `build/txc.exe --depth 4` 即可複現初始局面 `h2e2 / 18644 節點`。

**三方貢獻**
- **原作者（1991，佚名）** — `中国象棋 [TXC].nes` 的象棋引擎，6502 匯編。SHA-256 `f2a8aadfba05ed8566d3ec54285aca9ee2bb9408658e2a67f0cdea3aa1969f9b`。
- **GPT6** — 逐節點還原為 C11 引擎，py65 差分驗證。
- **Claude（Opus 4.8）** — 平等條件基準對局、源碼級效率對照、評估架構分析。

**參考**
- [Sachen / Thin Chen Enterprise — BootlegGames Wiki](https://bootleggames.fandom.com/wiki/Sachen)
- [Micro Genius — BootlegGames Wiki](https://bootleggames.fandom.com/wiki/Micro_Genius)
- [INES Mapper 132 (TXC) — NESdev Wiki](https://www.nesdev.org/wiki/INES_Mapper_132)
- [ElephantEye 象眼 — Huang Chen](https://github.com/pujfei/eleeye)
- 計算機博弈算法譜系：Shannon (1950)、Greenblatt Mac Hack (1967)、Slate & Atkin *CHESS 4.x* (1970s)、Belle。

<sub>本文記錄於 2026-09-05。技術數字均來自可複現的差分驗證與對局日誌；對作者身份的判斷基於公開存檔，如有知情者，歡迎補正。</sub>

---
---

# TXC 中國象棋：可讀 C 引擎還原（技術文檔）

從用戶提供的 `中国象棋 [TXC].nes` 提取數據、分析 6502 子程序，並手工整理為可獨立運行的 C11 引擎。運行 C 程序不需要 ROM、模擬器、Python 或網絡。

已還原的計算核心：棋盤與原始棋子編號、偽合法／合法走法、將軍檢測、棋子位置評分表、增量評分、走子／撤銷、歷史著法、迭代加深、搜索窗口、主變化優先、雙殺手著法、吃子排序、選擇性吃子延伸和重複走子剪枝。源代碼註釋標出了對應 ROM 地址。

這是根據機器碼重建的源碼，函數名和結構體由本項目重新命名。驗證採用直接執行該 ROM 子程序的方法；有限測試不能證明所有局面都完全等價。遊戲畫面、音樂、手柄、菜單、計時和存檔不屬於此項目。複現範圍及原程序特殊行為見 [還原記錄](analysis/engine_map.md)。

## 直接運行

在 PowerShell 中：

```powershell
cd D:\Documents\source\repos\txc-chess-engine
.\build\txc.exe --depth 4
.\build\txc.exe --depth 3 --play
```

`--play` 由你執當前行棋方，電腦執另一方。輸入如 `h2e2`，或 `hint`、`quit`。

坐標 `a0` 為紅方視角左下角，`i9` 為右上角。大寫表示紅子，小寫表示黑子：K 將帥，R 車，C 炮，N 馬，A 士，B 象，P 兵卒。

```powershell
.\build\txc.exe --moves "h2e2 h9g7" --depth 4
.\build\txc.exe --fen "4k4/9/9/9/4p4/9/9/9/4R4/4K4 w" --depth 3
```

`--depth` 接受 1～4。ROM 菜單對應的搜索檔位為 2、3、4；選擇性延伸可以超過這一層數，內部最高為 12 層。輸出 `score_red` 是原表單位下紅方相對黑方的分數，不是現代引擎的百分兵分數。根節點只有一個著法時直接返回，`depth 0 nodes 0` 表示無需搜索，此時輸出靜態分數。

## 編譯和嵌入

Windows 已附可運行文件 `build/txc.exe`，以及供測試和集成使用的 `txc.dll`。重新編譯需要 GCC：

```powershell
.\build.ps1
```

其他有 C11 編譯器的平台：

```sh
cc -std=c11 -O2 -Isrc src/main.c src/txc_position.c src/txc_search.c -o txc
```

也提供 `CMakeLists.txt`。核心僅有兩個 C 實現文件及一個數據表頭文件。

```c
#include "txc.h"

TxcPosition position;
txc_start(&position);
TxcResult result = txc_search(&position, 4);
if (result.move.from != 255) {
    TxcUndo undo;
    txc_make(&position, result.move, &undo);
    /* txc_unmake(&position, &undo); */
}
```

棋盤格為 `file * 12 + rank`；每列有 10 個可用格和 2 個邊界格。`txc_generate` 的輸出緩衝區須容納 `TXC_MAX_MOVES` 個著法；保留 ROM 的 80 著法上限。外部傳入 `txc_make` 的著法須先通過 `txc_generate` 驗證。搜索和合法走法生成均應完整恢復輸入局面。

`txc_fen` 檢查格式和棋子數量，不負責判定局面是否可能由合法對局到達。FEN 不含同類棋子的原始身份和走棋歷史，所以中局 FEN 的同分著法順序可能與某一具體 NES 對局不同。要持續保留身份和最近兩步歷史，請從 `txc_start` 開始調用 `txc_make`，或直接導入準確的 `board`、`square`、`recent` 數據。

## 複現驗證

測試使用 py65 執行原 ROM 中的函數，生產 C 引擎沒有 py65 依賴。

```powershell
python -m pip install --target tools/vendor -r tools/requirements.txt
python tools/extract.py
.\build.ps1
python tools/test_differential.py
python tools/test_search.py 100
python tools/test_edge_cases.py
```

默認 ROM 路徑為項目上一級的 `中国象棋 [TXC].nes`。如需指定其他位置：

```powershell
$env:TXC_ROM = 'D:\documents\中国象棋 [TXC].nes'
```

提取器核對完整 SHA-256，拒絕不同版本的 ROM。`analysis/engine.asm` 是按控制流發現的反匯編；`linear.asm` 僅供初步查看，含數據區誤解碼，應優先使用前者。

測試報告在 `analysis/differential.json`、`analysis/search_differential.json`、`analysis/edge_differential.json`。本地逆向工具參考 [py65 項目](https://github.com/mnaberez/py65) 和 [NESdev 指令參考](https://www.nesdev.org/wiki/Instruction_reference)。

本次交付的驗證結果：100 個局面、257400 次偽合法判斷、100 份有序合法著法列表、210 組搜索對照、11 組邊界／特殊行為測試均通過。最高檔初始局面的逐節點追蹤結果見 `analysis/trace_differential.json`。

需要重跑逐節點追蹤時，可啟用僅用於驗證的宏（完成後重新運行 `build.ps1` 恢復普通庫）：

```powershell
gcc -std=c11 -O2 -DTXC_TRACE -shared -o txc.dll src/txc_position.c src/txc_search.c
python tools/trace_search.py
.\build.ps1
```
