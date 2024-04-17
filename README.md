# alpine-python
a very samll docker image base on alpine with Python

# usage

```bash
docker build -t wangxian/alpine-python .

# cli
docker run -it --rm wangxian/alpine-python python3 -V

docker run -it --rm -p 8888:5000 wangxian/alpine-python
```