FROM nginx:latest

RUN apt-get update
RUN apt-get install git -y

COPY ./default.conf /etc/nginx/conf.d/default.conf


# Git이 설치되어 있는지 확인하고, 없다면 설치 후 명령어 실행
RUN if ! command -v git &> /dev/null; then \
        apt-get update && \
        apt-get install -y git \
    ; fi && \
    git clone https://github.com/gnuboard/gnuboard5.git

RUN mkdir /gnuboard5/data

EXPOSE 80

ENTRYPOINT ["nginx","-g","daemon off;"]
