# alpine-python
Alpine Linux-base Docker image with Python

With pip-8.0.2 & using pip Alibaba Open Source Mirror Site


Application will start `python run.py` 

# build
```
docker build -t wangxian/alpine-python .
docker run -it --rm -p 8888:5000 wangxian/alpine-python
```