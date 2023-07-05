FROM tiangolo/nginx-rtmp:latest

RUN apt-get update \
    && apt-get upgrade -y

#RUN apt-get install -y ffmpeg

COPY /nginx/nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /var/www/hls/live

#COPY rtmp_proxy.sh /etc/nginx/