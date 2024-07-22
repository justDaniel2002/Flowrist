FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
ARG BUILD_CONFIGURATION=Release
WORKDIR /src
COPY ["MilmomStore.Server/MilmomStore.Server.csproj", "MilmomStore.Server/"]
COPY ["Milmom_Service/Milmom_Service.csproj", "Milmom_Service/"]
COPY ["Milmom_Repository/Milmom_Repository.csproj", "Milmom_Repository/"]
COPY ["MilmomStore_DataAccessObject/MilmomStore_DataAccessObject.csproj", "MilmomStore_DataAccessObject/"]
COPY ["MilmomStore_BusinessObject/MilmomStore_BusinessObject.csproj", "MilmomStore_BusinessObject/"]
RUN dotnet restore "MilmomStore.Server/MilmomStore.Server.csproj"
COPY . .
WORKDIR "/src/MilmomStore.Server"
RUN dotnet build "MilmomStore.Server.csproj" -c $BUILD_CONFIGURATION -o /app/build

FROM build AS publish
ARG BUILD_CONFIGURATION=Release
RUN dotnet publish "MilmomStore.Server.csproj" -c $BUILD_CONFIGURATION -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "MilmomStore.Server.dll"]
