# 使用 Microsoft 提供的 .NET Framework 4.8 映像
FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8

# 建立資料夾來放網站
WORKDIR /inetpub/wwwroot

# 複製你的發佈檔案
COPY ./PublishOutput/ .  # 注意這個資料夾要事先準備好
