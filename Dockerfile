FROM debian:latest

RUN apt-get update && \
        apt-get -y install wget bzip2 libgtk-3-0 libdbus-glib-1-2 libxt6:amd64 && \
        apt-get clean

RUN groupadd --gid 1000 user && \
        useradd --uid 1000 --gid 1000 --create-home user

USER user

RUN cd /home/user &&  \
    wget  http://mirror.reismil.ch/gnu/gnuzilla/52.1.0/icecat-52.1.0.en-US.linux-x86_64.tar.bz2 && \
    tar jxvf icecat-52.1.0.en-US.linux-x86_64.tar.bz2 

RUN rm icecat-52.1.0.en-US.linux-x86_64.tar.bz2 

CMD /home/user/icecat/icecat
