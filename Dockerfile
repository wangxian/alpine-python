FROM alpine:3.16
MAINTAINER WangXian <xian366@126.com>

WORKDIR /app
COPY startup.sh .

RUN apk add --update python3 py3-pip curl && rm -rf /var/cache/apk/* && ln -sfv /usr/bin/python3 /usr/bin/python && pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

EXPOSE 8000

CMD ["/bin/sh", "/app/startup.sh"]
