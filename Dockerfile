FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /app

# Copiar e compilar o aplicativo
COPY . ./
RUN dotnet publish -c Release -o out

# Criar uma imagem m�nima
FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS runtime
WORKDIR /app
COPY --from=build /app/out ./

CMD ["dotnet", "School_API.dll"]
