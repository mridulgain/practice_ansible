# ansible-nodes
FROM ubuntu
RUN apt-get update && \
apt-get install -y iproute2 ssh iputils-ping vim-tiny ansible && \
mkdir /var/run/sshd && \
chmod 0755 /var/run/sshd
WORKDIR /root
RUN mkdir .ssh/
COPY keys/id_* .ssh/
RUN cp .ssh/id_rsa.pub .ssh/authorized_keys && \
chmod 600 .ssh/id_rsa
EXPOSE 22
ENTRYPOINT ["/usr/sbin/sshd"]
CMD ["-D"]
