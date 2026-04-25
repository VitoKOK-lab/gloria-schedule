# Gloria 排班系統

線上班表：https://vitokok-lab.github.io/gloria-schedule/

## 新增月份班表
1. 將新的 `schedule_YYYY_MM.json` 放入 `data/` 資料夾
2. 在 `index.html` 的 `const MONTHS = [...]` 陣列中加入新月份
3. 執行 `push.bat` 推送

## 資料格式
班別代號：A=早班, M=中班, P=晚班, RL=例假, AL=年假, SL=病假, OL=公假
