FROM alpine:3.16
LABEL maintainer="WangXian <xian366@126.com>"

WORKDIR /app
COPY startup.sh .

RUN apk add --update python3 py3-pip curl mariadb-dev build-base python3-dev \
    && pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple \
    && pip install mysqlclient~=2.2.4 \
    && apk del mariadb-dev build-base python3-dev \
    && apk add tzdata && cp /usr/share/zoneinfo/PRC /etc/localtime && echo "PRC" > /etc/timezone && apk del tzdata \
    && rm -rf /var/cache/apk/* \
    && ln -sfv /usr/bin/python3 /usr/bin/python \
    
EXPOSE 8000

CMD ["/bin/sh", "/app/startup.sh"]
