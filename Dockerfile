FROM ubuntu:22.04

SHELL ["/bin/bash", "-c"]

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC

COPY update.sh /root
RUN chmod +x /root/update.sh
RUN /root/update.sh

COPY build-git.sh /root
RUN chmod +x /root/build-git.sh
RUN /root/build-git.sh

RUN git config --global http.version HTTP/1.1
RUN git config --global http.sslBackend openssl
RUN git config --global https.sslBackend openssl

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