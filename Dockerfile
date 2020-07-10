FROM ubuntu:focal

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Tokyo 
RUN apt-get update && \
    apt-get install -y time python3 python3-pip nodejs npm && \
    apt-get install -y ruby
RUN pip3 install online-judge-tools
RUN npm install -g atcoder-cli

RUN mkdir /app
WORKDIR /app
RUN echo "alias tes='oj t -c \"ruby main.rb\" -d ./tests/'" | tee -a /root/.bashrc

# TODO: save session / config
