FROM i3clogic/thanos:1.1
RUN mkdir /usr/share/thanos

RUN yum -y install wget
RUN yum -y install epel-release
RUN yum -y install java initscripts && yum clean all

COPY * usr/share/thanos
COPY entrypoint.sh .
#################
RUN export M2_HOME=/usr/local/maven
RUN export PATH=${M2_HOME}/bin:${PATH}

ENV M2_HOME /usr/local/maven
ENV PATH ${M2_HOME}/bin:${PATH}

RUN chmod +x ./entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]
