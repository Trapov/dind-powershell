FROM docker:stable
RUN apk add --no-cache \
        ca-certificates \
        less \
        ncurses-terminfo-base \
        krb5-libs \
        libgcc \
        libintl \
        libssl1.1 \
        libstdc++ \
        tzdata \
        userspace-rcu \
        zlib \
        icu-libs \
        curl && \
        apk -X https://dl-cdn.alpinelinux.org/alpine/edge/main add --no-cache lttng-ust && \
        curl -L https://github.com/PowerShell/PowerShell/releases/download/v7.0.2/powershell-7.0.2-linux-alpine-x64.tar.gz -o /tmp/powershell.tar.gz &&\
        mkdir -p /opt/microsoft/powershell/7 &&\
        tar zxf /tmp/powershell.tar.gz -C /opt/microsoft/powershell/7 &&\
        chmod +x /opt/microsoft/powershell/7/pwsh &&\
        ln -s /opt/microsoft/powershell/7/pwsh /usr/bin/pwsh

ENTRYPOINT [ "pwsh" ]