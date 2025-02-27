FROM alpine:3.17
LABEL maintainer="WangXian <xian366@126.com>"

WORKDIR /app
COPY startup.sh .

RUN apk add --update python3 py3-pip curl mariadb-dev build-base python3-dev \
    && pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple \
    && pip install mysqlclient~=2.2.4 \
    && sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
    && apk del mariadb-dev build-base python3-dev \
    && apk add tzdata && cp /usr/share/zoneinfo/PRC /etc/localtime && echo "PRC" > /etc/timezone && apk del tzdata \
    && rm -rf /var/cache/apk/* \
    && ln -sfv /usr/bin/python3 /usr/bin/python \
    
EXPOSE 8000

CMD ["/bin/sh", "/app/startup.sh"]
