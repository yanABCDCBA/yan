FROM centos:7
LABEL version="1.0"
ADD http://www6.atomicorp.com/channels/atomic/centos/7/x86_64/RPMS/atomic-release-1.0-23.el7.art.noarch.rpm /app/
WORKDIR /app/
RUN rpm -Uvh atomic-release*rpm
RUN yum install hydra -y
COPY passwd.txt /app/
ENTRYPOINT ["/usr/bin/hydra"]
CMD []
~
