FROM ubuntu:latest

SHELL ["/bin/bash", "-c"]
RUN apt update
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC
RUN apt-get install -y git-all
RUN apt-get install -y python3 python3-pip
COPY create-env.sh /root
RUN chmod +x /root/create-env.sh
RUN /root/create-env.sh

RUN apt-get install -y default-jre
COPY build-iso15118.sh /root
RUN chmod +x /root/build-iso15118.sh
RUN /root/build-iso15118.sh

RUN apt-get install -y cmake build-essential libboost-system-dev \
libboost-thread-dev libboost-program-options-dev libboost-test-dev \
libboost-filesystem-dev pkg-config gnutls-bin libcap-dev 
COPY build-everest.sh /root
RUN chmod +x /root/build-everest.sh
RUN /root/build-everest.sh

CMD ["ls","-l"]