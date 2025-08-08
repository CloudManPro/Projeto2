# Dockerfile simplificado
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
WORKDIR /app
COPY ./publish_output .
EXPOSE 80
ENTRYPOINT ["dotnet", "MeuSite.dll"]
