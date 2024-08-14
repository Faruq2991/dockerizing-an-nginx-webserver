FROM ubuntu:latest

RUN apt update && apt install -y nginx

EXPOSE 8081

CMD [ "nginx", "-g", "daemon off"; ]
