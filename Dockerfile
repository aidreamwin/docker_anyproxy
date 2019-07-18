FROM node:latest
MAINTAINER Mr.Dabin <605716308@qq.com>
RUN npm install -g anyproxy
ADD entrypoint.sh /work/scripts/
ADD run.sh /work/scripts/
WORKDIR /work/scripts
EXPOSE 8001
EXPOSE 8002
CMD ["sh","entrypoint.sh"]
