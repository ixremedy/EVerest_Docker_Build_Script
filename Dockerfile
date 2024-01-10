FROM ubuntu:latest

SHELL ["/bin/bash", "-c"]
RUN apt update
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC

RUN apt-get install -y cmake autoconf build-essential libboost-system-dev \
libboost-thread-dev libboost-program-options-dev libboost-test-dev \
libboost-filesystem-dev pkg-config gnutls-bin libcap-dev openssl \
libz-dev libssl-dev libcurl4-gnutls-dev libexpat1-dev gettext gcc \
python3 python3-pip default-jre openssh-client

COPY build-git.sh /root
RUN chmod +x /root/build-git.sh
RUN /root/build-git.sh

COPY create-env.sh /root
RUN chmod +x /root/create-env.sh
RUN /root/create-env.sh

COPY build-iso15118.sh /root
RUN chmod +x /root/build-iso15118.sh
RUN /root/build-iso15118.sh

COPY build-everest.sh /root
RUN chmod +x /root/build-everest.sh
RUN /root/build-everest.sh

CMD ["ls","-l"]