ARG BUILD_FROM
FROM mcr.microsoft.com/dotnet/core/aspnet:$BUILD_FROM
WORKDIR /deploy
COPY deploy/. ./
ENTRYPOINT ["dotnet", "dockertest2.dll"]