FROM alpine:3.16
MAINTAINER WangXian <xian366@126.com>

WORKDIR /app
COPY startup.sh .

RUN apk add --update python3 && rm -rf /var/cache/apk/* && pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

EXPOSE 8000

CMD ["/bin/sh", "/startup.sh"]
