# alpine-python
a very samll docker image base on alpine with Python

# usage

```bash
docker build -t wangxian/alpine-python .

# cli
docker run -it --rm wangxian/alpine-python python3 -V

# Web server | auto run /bin/sh /app/startup.sh
docker run -it --rm -p 8000:8000 wangxian/alpine-python
```