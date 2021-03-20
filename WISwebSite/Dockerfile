FROM mcr.microsoft.com/dotnet/framework/sdk:4.8 AS build
WORKDIR /app

# copy csproj and restore as distinct layers
COPY *.sln .
COPY WISwebSite/*.csproj ./WISwebSite/
COPY utils/*.csproj ./utils/
RUN dotnet restore

# copy everything else and build app
COPY . .
WORKDIR /app/WISwebSite
RUN dotnet build --no-restore


FROM build AS publish
WORKDIR /app/WISwebSite
RUN dotnet publish -c Release -o out --no-restore


FROM mcr.microsoft.com/dotnet/framework/runtime:4.8 AS runtime
WORKDIR /app
COPY --from=publish /app/WISwebSite/out ./
ENTRYPOINT ["WISwebSite.exe"]