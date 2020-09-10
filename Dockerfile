FROM mcr.microsoft.com/dotnet/core/sdk:3.1
RUN apt-get update \
    && apt-get install apt-transport-https -y --no-install-recommends \
    && curl -LO https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb \
    && dpkg -i packages-microsoft-prod.deb \
    && apt-get update \
    && apt-get install powershell -f -y \
    && pwsh --version
