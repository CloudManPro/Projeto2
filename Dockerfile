# Estágio de Build (REMOVIDO)
#.Net já é nativo no CodeBuild
#FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build
#WORKDIR /app
#COPY *.csproj ./
#RUN dotnet restore
#COPY . ./
#RUN dotnet publish -c Release -o out

# Dockerfile simplificado
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
WORKDIR /app
COPY ./publish_output .
EXPOSE 80
ENTRYPOINT ["dotnet", "MeuSite.dll"]
