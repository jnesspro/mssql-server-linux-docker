FROM microsoft/mssql-server-linux
MAINTAINER Aleksandr Streltsov <jness.pro@gmail.com>
LABEL Description="mssql-server-linux" Vendor="Aleksandr Streltsov <jness.pro@gmail.com>" Version="1.0.0"

EXPOSE 1433
ENV DEBIAN_FRONTEND noninteractive
ENV ACCEPT_EULA Y
VOLUME /var/opt/mssql/backup
VOLUME /sql
RUN apt-get update && apt-get install -y curl apt-transport-https debconf-utils apt-utils \
    && curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - \
    && curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list | tee /etc/apt/sources.list.d/msprod.list \
    && echo mssql-tools mssql-tools/accept_eula boolean Y | debconf-set-selections \
    && echo msodbcsql msodbcsql/accept_eula boolean true | debconf-set-selections \
    && apt-get update && apt-get install -y mssql-tools unixodbc-dev \
    && ln -sfn /opt/mssql-tools/bin/sqlcmd-13.0.1.0 /usr/bin/sqlcmd \
    && ln -sfn /opt/mssql-tools/bin/bcp-13.0.1.0 /usr/bin/bcp \
    && locale-gen en_US en_US.UTF-8 \
    && dpkg-reconfigure locales \
    && apt-get autoremove -y && apt-get clean \
    && rm -rf /var/cache/* && rm -rf /var/lib/apt/lists/*
