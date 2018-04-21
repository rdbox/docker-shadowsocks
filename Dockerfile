# shadowsocks
#
# VERSION 0.0.3

FROM ubuntu:rolling

RUN apt-get update && \
    apt-get install -y python-pip libsodium18 && \
    apt-get install -y git
RUN pip install shadowsocks==2.8.2
RUN pip install --upgrade pip
RUN pip2 install --upgrade -e git+https://github.com/shadowsocks/shadowsocks.git@2.9.1#egg=shadowsocks

# Configure container to run as an executable
ENTRYPOINT ["/usr/local/bin/ssserver"]
