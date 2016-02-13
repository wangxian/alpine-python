FROM alpine:latest
MAINTAINER WangXian <xian366@126.com>

WORKDIR /app
COPY . .

RUN mkdir ~/.pip && mv pip.conf ~/.pip
RUN apk add --update curl python py-pip && rm /var/cache/apk/*
RUN /usr/bin/easy_install-2.7 -U pip

EXPOSE 5000
CMD ["python", "run.py"]
