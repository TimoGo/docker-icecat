docker-icecat
Dockerfile for icecat Browser on debian stable (work in progress!)


to build the container:
```
 docker build -t icecat .
```


start Conainer with:
```
 docker run -ti --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix tghode/docker-icecat:latest
```



