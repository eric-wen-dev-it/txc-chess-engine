# TXC C 還原版與 ChineseChessAI 傳統引擎對局

測試日期：2026-09-05。本輪比較直接編譯 `D:/Documents/source/repos/ChineseChessAI` 當前源代碼，未修改該項目。

## 方法

- TXC：本項目原生 C DLL，`txc_search(position, 4)`，原遊戲最高搜索檔；原版選擇性延伸最高到 12 層。它在現代電腦運行，下面的毫秒數不是 NES 原機耗時。
- ChineseChessAI：`TraditionalEngine`，Release、x64、單線程，`WithEnhancedQuiescence()`；主搜索上限 64 層，按每步 100 或 1000 毫秒停止；分別測試靜搜上限 6 和 12 層。
- 兩邊均不使用開局庫、排序棋譜或大師棋譜。TraditionalEngine 在一局內持續複用，每局重新創建。
- 每個開局交換紅黑，按順序串行比賽。四個開局爲初始局面、雙方中兵前進、雙方 c 兵前進、雙方右象進中。
- 每一步用項目的 MoveGenerator 驗證合法性，並覈對兩邊的全部 90 格棋盤；未出現非法着或棋盤不同步異常。
- 勝負判定爲將帥消失或無合法着；不按評估分提前認輸。三次重複、120 個無喫子／兵卒走動半回合或 200 個搜索半回合上限記和。兵卒橫移也會重置計數，沿用項目 Board 的定義。
- 爲統一裁判，根節點和裁判均跳過長將禁着過濾；項目搜索內部仍保留其原有重複局面處理。此處不測試完整比賽長將／長捉規則。
- JSON 的 `plies` 包括預置開局着法，單位爲半回合（一方走一次）；`score` 屬於各自評分尺度，不能直接比較。

## 結果

| 項目傳統引擎每步預算 | 增強靜搜上限 | 對局數 | TXC 勝 | 項目傳統引擎勝 | 和棋 | TXC 平均每步實耗 | 項目平均每步實耗 |
|---|---|---:|---:|---:|---:|---:|---:|
| 100 ms | 6 | 8 | 8 | 0 | 0 | 8.43 ms | 99.66 ms |
| 1000 ms | 6 | 4 | 3 | 1 | 0 | 6.01 ms | 990.79 ms |
| 1000 ms | 12 | 2 | 1 | 1 | 0 | 6.32 ms | 991.85 ms |

第一組使用全部四個開局，第二組使用初始局面和雙方中兵前進，第三組僅使用初始局面，均交換紅黑。14 局全部以下到終局結束，沒有和棋或非法着判負。第三組項目引擎執黑獲勝、執紅落敗。

100 ms 組項目完成主搜索深度的中位數是 3，1000 ms / 靜搜 6 組爲 6。TXC 通常爲 4，唯一着無需搜索時返回 0。兩種算法的層數定義、剪枝及延伸不同，不能用深度數字直接衡量棋力。

就已測的無棋譜、單線程配置，TXC C 版在短時限下優勢明顯且耗時更少；項目引擎在 1 秒、12 層靜搜的兩局中與它各勝一局，不能據此認定長時限下誰穩定更強。項目已有 PVS、置換表、空着／其他剪枝和多項評估，但功能數量並不等於棋力。究竟是搜索效率、剪枝還是評估配合導致落敗，需要另做消融和敗局分析，本輪未定位根因。

這是少量固定開局的初步實測，不足以估算可靠 Elo，也不能推出所有開局、長時限、有棋譜或其他配置下的強弱。本輪沒有單獨測基礎靜搜配置。項目訓練入口採用增強靜搜 12 層，但本次預算與應用內其他入口／聯賽完整配置不完全相同。

## 復現與記錄

`Compare.csproj` 目前以絕對路徑 `D:/Documents/source/repos/ChineseChessAI` 引用外部原始碼。在其他電腦複現前，先取得 [ChineseChessAI](https://github.com/eric-wen-dev-it/ChineseChessAI)，並將專案檔中的三個 `Compile Include` 路徑調整至實際位置。此相依來源不包含在 TXC 儲存庫內；歷史測試版本以 `results/source_versions.json` 為準。

在此目錄用 PowerShell 運行（先確保上級 `txc.dll` 已構建）：

```powershell
dotnet build -c Release
dotnet bin/Release/net10.0-windows/Compare.dll 100 enhanced 4 6
dotnet bin/Release/net10.0-windows/Compare.dll 1000 enhanced 2 6
dotnet bin/Release/net10.0-windows/Compare.dll 1000 enhanced 1 12
python summarize.py
```

參數依次是每步毫秒數、`enhanced` 或 `base`、開局對數（1～4）、靜搜深度。按時間停止使運行之間可能出現不同着法。

- [100 ms，8 局完整走法](results/enhanced_100ms.json)
- [1000 ms，靜搜 6，4 局完整走法](results/enhanced_1000ms.json)
- [1000 ms，靜搜 12，2 局完整走法](results/enhanced_1000ms_q12.json)
- [測試源文件與 DLL 的 SHA-256](results/source_versions.json)
- [比賽程序](Program.cs)

前兩輪使用未顯式參數化靜搜深度的同一程序，文件名未帶 `_q6`；現在的復現命令會生成帶 `_q6` 的文件。
