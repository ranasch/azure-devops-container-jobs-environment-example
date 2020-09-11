FROM mcr.microsoft.com/dotnet/core/runtime:3.1
RUN apt-get update \
    && apt-get install apt-transport-https -y --no-install-recommends \
    && curl -LO https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb \
    && dpkg -i packages-microsoft-prod.deb \
    && apt-get update \
    && apt install wget -y \
    && wget https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb \
    && dpkg -i packages-microsoft-prod.deb \
    && apt-get install -y apt-transport-https \
    && apt-get update \
    && apt-get install -y dotnet-sdk-3.1 \
    && apt-get install net-tools -f -y \
    && dotnet --info
