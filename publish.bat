@echo off
:: Step 1: 發佈資料並設定環境變數
set ENVIRONMENT=development

:: 切換到專案資料夾
cd /d C:\path\to\your\project

:: 發佈 .NET 應用程式
echo 正在發佈應用程式...
dotnet publish -c Release -o .\publish --no-restore
echo 發佈完成，環境設定為 %ENVIRONMENT%.

:: Step 2: 執行 Dockerfile 來建立映像檔
echo 開始執行 Dockerfile 建立映像檔...
docker build -t myapp:v1 .

echo Docker 映像檔建立完成，標籤為 yourapp:v1.
pause
