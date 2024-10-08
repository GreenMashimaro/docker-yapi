FROM node:18
COPY repositories /etc/apk/repositories

RUN apt-get install -y python3 make openssl tar gcc
RUN npm install -g @icic/yapi-cli --registry https://registry.npmmirror.com

EXPOSE 3000 9090
