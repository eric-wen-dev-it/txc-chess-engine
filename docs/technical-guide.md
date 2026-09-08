# TXC 中國象棋：可讀 C 引擎還原（技術文檔）

[返回專案首頁](../README.md) · [文件索引](README.md)

所有命令均從儲存庫根目錄執行。

從用戶提供的 `中国象棋 [TXC].nes` 提取數據、分析 6502 子程序，並手工整理為可獨立運行的 C11 引擎。運行 C 程序不需要 ROM、模擬器、Python 或網絡。

已還原的計算核心：棋盤與原始棋子編號、偽合法／合法走法、將軍檢測、棋子位置評分表、增量評分、走子／撤銷、歷史著法、迭代加深、搜索窗口、主變化優先、雙殺手著法、吃子排序、選擇性吃子延伸和重複走子剪枝。源代碼註釋標出了對應 ROM 地址。

這是根據機器碼重建的源碼，函數名和結構體由本項目重新命名。驗證採用直接執行該 ROM 子程序的方法；有限測試不能證明所有局面都完全等價。遊戲畫面、音樂、手柄、菜單、計時和存檔不屬於此項目。複現範圍及原程序特殊行為見 [還原記錄](../analysis/engine_map.md)。

## 直接運行

在 PowerShell 中：

```powershell
cd txc-chess-engine
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
