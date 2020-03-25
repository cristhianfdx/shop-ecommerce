FROM debian:stable-slim

RUN apt-get update && apt-get upgrade -y && \
    apt-get install wget python3 python3-dev -y

RUN apt-get install python3-pip -y

RUN apt-get install apache2 -y

RUN a2enmod rewrite

RUN pip3 install dropbox

RUN pip3 install runp

RUN mkdir /dropbox_b

COPY index.py /dropbox_b

CMD /usr/sbin/apache2ctl -D FOREGROUND